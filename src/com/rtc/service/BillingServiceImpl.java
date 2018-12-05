package com.rtc.service;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.rtc.beans.BillDetails;
import com.rtc.beans.BillDetailsJSON;
import com.rtc.beans.Billing;
import com.rtc.dao.PaymentTypeDAO;
import com.rtc.model.Brand;
import com.rtc.model.BrandProductPackingRateTaxMapping;
import com.rtc.model.Customer;
import com.rtc.model.Packing;
import com.rtc.model.PaymentType;
import com.rtc.model.Product;
import com.rtc.util.EnglishNumberToWords;

@Service
public class BillingServiceImpl implements BillingService {

	@Autowired
	private CustomerService customerService;

	@Autowired
	private ProductService productService;

	@Autowired
	private PackingService packingService;
/*
	@Autowired
	private QuantityService quantityService;
*/
	@Autowired
	private PaymentTypeService paymentTypeService;

	@Autowired
	private BrandService brandService;

	@Autowired
	private BrandProductPackingRateTaxMappingService brandProductPackingRateTaxMappingService;

	@Override
	public Billing renderBill() {
		Billing billing = new Billing();
		setBillingMaps(billing);
		return billing;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Map<Integer, Billing> submitBill(Billing billing, HttpSession session) {
		Integer mapKey = 0;
		Map<Integer, Billing> billMap = new HashMap<Integer, Billing>();
		
		BrandProductPackingRateTaxMapping bpprtm = brandProductPackingRateTaxMappingService
				.getMappingByBrandProductPacking(billing.getBrandId(), billing.getProductId(), billing.getPackingId());
		if (!StringUtils.isEmpty(bpprtm)) {
			setBillingMaps(billing);
			Billing billview = new Billing();
			billview.setCustomer(billing.getCustomersMap().get(billing.getCustomerId()));
			billview.setProduct(billing.getProductsMap().get(billing.getProductId()));
			billview.setProductId(billing.getProductId());
			billview.setHsnCode(billing.getHsnCode());
			if (billing.isIncludeBrand()) {
				billview.setBrand(billing.getBrandsMap().get(billing.getBrandId()));
			}
			billview.setBrandId(billing.getBrandId());
			billview.setPacking(billing.getPackgingMap().get(billing.getPackingId()));
			billview.setPackingId(billing.getPackingId());
			billview.setQuantity(billing.getQuantity());
			billview.setUnit(billing.getUnit());
			billview.setDate(billing.getDate());
			billview.setTime(billing.getTime());
			billview.setBillPaymentType(billing.getPaymentTypeMap().get(billing.getBillPaymentTypeId()));
			billview.setVehicleNo(billing.getVehicleNo());

			if (StringUtils.isEmpty(session.getAttribute("billMap"))) {
				mapKey = billing.getBillMap().size() + 1;
			} else {
				Map<Integer, Billing> sessionBillMap = (Map<Integer, Billing>) session.getAttribute("billMap");
				billMap.putAll(sessionBillMap);
				mapKey = sessionBillMap.size() + 1;
			}
			billMap.put(mapKey, billview);
			System.out.println("Map Key : "+mapKey);
		}
		session.setAttribute("billMap", billMap);
		return billMap;
	}

	@Override
	public BillDetailsJSON createBill(HttpSession session) {
		SimpleDateFormat dateFormater = new SimpleDateFormat("dd-MMM-yyyy");
		BillDetailsJSON invoice = new BillDetailsJSON();
		Map<Integer, Billing> billMap = (Map<Integer, Billing>) session.getAttribute("billMap");
		if (!billMap.isEmpty()) {
			
			Customer customer = customerService.getCustomer(billMap.get(1).getCustomer());
			
			invoice.setCustomer(customer);
			invoice.setVehicleNo(billMap.get(1).getVehicleNo());
			invoice.setBillPaymentType(billMap.get(1).getBillPaymentType());
			invoice.setDate(dateFormater.format(billMap.get(1).getDate()));
			invoice.setTime(billMap.get(1).getTime());
			Map<Integer, BillDetails> billDetailsMap = new HashMap<Integer, BillDetails>();
			for(Map.Entry<Integer, Billing> entry : billMap.entrySet()){
			//billMap.entrySet().parallelStream().forEach(entry -> {
				Billing billing = entry.getValue();

				BillDetails billDetails = new BillDetails();

				billDetails.setProduct(billing.getProduct());
				billDetails.setBrand(billing.getBrand());
				billDetails.setHsnCode(billing.getHsnCode());
				billDetails.setPacking(billing.getPacking());
				billDetails.setQuantity(billing.getQuantity());

				BrandProductPackingRateTaxMapping bpprtm = brandProductPackingRateTaxMappingService
						.getMappingByBrandProductPacking(billing.getBrandId(), billing.getProductId(), billing.getPackingId());
				double rate = bpprtm.getRate();
				double gst = bpprtm.getGST();
				double sgst_cgst = (rate * gst) / 100;
				rate = rate-sgst_cgst;
				double amount = Double.valueOf(billing.getQuantity() * rate);
				//sgst_cgst = (amount * gst) / 100;
				sgst_cgst = sgst_cgst * billing.getQuantity();
				double total = invoice.getTotal() + amount;
				double sgst = invoice.getSgst() + (sgst_cgst / 2);
				double cgst = invoice.getCgst() + (sgst_cgst / 2);
				//double netAmount = invoice.getNetAmount() + invoice.getTotal() + invoice.getSgst() + invoice.getCgst();
				System.out.println("Amount : "+amount+" || Rate : "+rate+" || GST : "+gst+" || SGT-CGST : "+sgst_cgst+" || SGST : "+sgst+" || CGST : "+cgst+" || Total : "+total);
				billDetails.setRate(rate);
				billDetails.setAmount(amount);
				billDetails.setGst(gst);
				invoice.setTotal(total);
				invoice.setSgst(sgst);
				invoice.setCgst(cgst);
				//invoice.setNetAmount(netAmount);
				billDetailsMap.put(entry.getKey(), billDetails);
			}
			double netAmount = invoice.getTotal() + invoice.getSgst() + invoice.getCgst();
			System.out.println("NetAmount : "+netAmount);
			invoice.setNetAmount(netAmount);
			invoice.setBillDetailsMap(billDetailsMap);
			invoice.setNetAmountInWords(EnglishNumberToWords.convert(new Double(invoice.getNetAmount()).longValue()));
		}
		return invoice;
	}

	public void setBillingMaps(Billing billing) {

		List<Customer> customersList = customerService.getAllCustomers();
		List<Product> productsList = productService.getAllProducts();
		List<Brand> brandList = brandService.getAllBrands();
		List<Packing> packingList = packingService.getAllPackings();
		List<PaymentType> paymentTypeList = paymentTypeService.getAllPaymentTypes();
		// List<Unit> unitList = unitService.getAllUnit();

		billing.setCustomersMap(constructCUstomerMap(customersList));
		billing.setProductsMap(constructProductMap(productsList));
		billing.setBrandsMap(constructBrandMap(brandList));
		billing.setPackgingMap(constructPackingMap(packingList));
		billing.setPaymentTypeMap(constructPaymentTypeMap(paymentTypeList));
		// billing.setQuantityMap(constructQuantityMap(quantityList));
		// billing.setUnitMap(constructUnitMap(unitList));

	}

	public Map<Integer, String> constructCUstomerMap(List<Customer> customers) {
		return customers.stream().collect(Collectors.toMap(Customer::getId, Customer::getName));
	}

	public Map<Integer, String> constructProductMap(List<Product> products) {
		return products.stream().collect(Collectors.toMap(Product::getId, Product::getName));
	}

	public Map<Integer, String> constructBrandMap(List<Brand> brands) {
		return brands.stream().collect(Collectors.toMap(Brand::getId, Brand::getName));
	}

	public Map<Integer, String> constructPackingMap(List<Packing> packings) {
		return packings.stream().collect(Collectors.toMap(Packing::getId, Packing::getName));
	}
	
	 public Map<Integer, String> constructPaymentTypeMap(List<PaymentType> quantities) { 
	 	return quantities.stream() .collect(Collectors.toMap(PaymentType :: getId, PaymentType :: getName)); 
	 }
	 /*
	 public Map<Integer, String> constructUnitMap(List<Unit> units) { 
	 	return units.stream() .collect(Collectors.toMap(Unit :: getName, Unit :: getName)); 
	 }
	*/

}
