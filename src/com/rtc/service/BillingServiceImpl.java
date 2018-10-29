package com.rtc.service;

import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.rtc.model.Brand;
import com.rtc.model.BrandProductPackingRateTaxMapping;
import com.rtc.model.Customer;
import com.rtc.model.Packing;
import com.rtc.model.Product;
import com.rtc.model.Quantity;
import com.rtc.model.Unit;
import com.rtc.util.EnglishNumberToWords;

@Service
public class BillingServiceImpl implements BillingService {
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private PackingService packingService;
	
	@Autowired
	private QuantityService quantityService;
	
	@Autowired
	private UnitService unitService;
	
	@Autowired
    private BrandService brandService;
	
    @Autowired
    private BrandProductPackingRateTaxMappingService brandProductPackingRateTaxMappingService;

	@Override
	public Billing renderBill() {
		Billing billing = new Billing();
		billing.setHsnCode("0402");
		setBillingMaps(billing);
		billing.setButtonName("Submit");
		return billing;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Billing submitBill(Billing billing, HttpSession session){
		SimpleDateFormat simpleDateFormater = new SimpleDateFormat("dd-MMM-yyyy");
		SimpleDateFormat simpleTimeFormater = new SimpleDateFormat( "hh:mm a" );
		Date time = new Date(System.currentTimeMillis());
        String dateTime = simpleDateFormater.format(billing.getDate()) +" "+ simpleTimeFormater.format(time);
		
		Map<Integer, Billing> billMap = new HashMap<Integer, Billing>();
		
		setBillingMaps(billing);
		
		Billing billview = new Billing();
		billview.setCustomer(billing.getCustomer());
		billview.setProduct(billing.getProduct());
		billview.setHsnCode(billing.getHsnCode());
		billview.setBrand(billing.getBrand());
		billview.setPacking(billing.getPacking());
		billview.setQuantity(billing.getQuantity());
		billview.setUnit(billing.getUnit());
		billview.setDateTime(dateTime);
		
		if(StringUtils.isEmpty(session.getAttribute("billMap"))){
			billMap.put(billing.getBillMap().size()+1, billview);
		}else{
			Map<Integer, Billing> sessionBillMap = (Map<Integer, Billing>)session.getAttribute("billMap");
			billMap.putAll(sessionBillMap);
			billMap.put(sessionBillMap.size()+1, billview);
		}
		session.setAttribute("billMap", billMap);
		billing.setBillMap(billMap);
		
		//Customer customer = customerService.getCustomer(Integer.parseInt(billing.getCustomer()));
		//billing.setCustomerObj(customer);
		billing.setButtonName("Add More");
		return billing;
	}
	
	@Override
	public BillDetailsJSON createBill(HttpSession session){
		Map<Integer, Billing> billMap = new HashMap<Integer, Billing>();
		if(!StringUtils.isEmpty(session.getAttribute("billMap"))){
			billMap = (Map<Integer, Billing>)session.getAttribute("billMap");
		}
		Customer customer = customerService.getCustomer(billMap.get(1).getCustomer());
		//billing.setDateTime(billMap.get(1).getDateTime());
		//billing.setCustomerObj(customer);
		
		BillDetailsJSON invoice = new BillDetailsJSON();
		invoice.setCustomer(customer);
		
		billMap.entrySet().parallelStream().forEach(entry -> {
        	Billing billing = entry.getValue();
        	
        	Map<Integer, BillDetails> billDetailsMap = new HashMap<Integer, BillDetails>();
        	BillDetails billDetails = new BillDetails();
        	
        	billDetails.setProduct(billing.getProduct());
        	billDetails.setBrand(billing.getBrand());
        	billDetails.setHsnCode(billing.getHsnCode());
        	billDetails.setPacking(billing.getPacking());
        	billDetails.setQuantity(billing.getQuantity());
        	
        	int productId = productService.getProductByName(billing.getProduct()).getId();
        	int packingId = packingService.getPackingByName(billing.getPacking()).getId();
        	int brandId = brandService.getBrandByName(billing.getBrand()).getId();
        			
        	BrandProductPackingRateTaxMapping bpprtm = brandProductPackingRateTaxMappingService.getMappingByBrandProductPacking(brandId, productId, packingId);
        	double amount = Double.valueOf(Integer.parseInt(billing.getQuantity()) * bpprtm.getRate());
        	billDetails.setRate(bpprtm.getRate());
        	billDetails.setAmount(amount);
        	billDetails.setGst(bpprtm.getGST());
        	invoice.setTotal(invoice.getTotal() + amount);
        	double sgst_cgst = (invoice.getSgst() + ((bpprtm.getRate() * bpprtm.getGST()) / 100));
        	invoice.setSgst(sgst_cgst/2);
        	invoice.setCgst(sgst_cgst/2);
        	invoice.setNetAmount(invoice.getNetAmount() + invoice.getTotal() + invoice.getSgst() + invoice.getCgst());
        	billDetailsMap.put(entry.getKey(), billDetails);
        	invoice.setBillDetailsMap(billDetailsMap);
        });
		
		invoice.setNetAmountInWords(EnglishNumberToWords.convert(new Double(invoice.getNetAmount()).longValue()));
		return invoice;
	}
	
	public void setBillingMaps(Billing billing){
		
		List<Customer> customersList = customerService.getAllCustomers();
		List<Product> productsList = productService.getAllProducts();
		List<Brand> brandList = brandService.getAllBrands();
		List<Packing> packingList = packingService.getAllPackings();
		List<Quantity> quantityList = quantityService.getAllQuantities();
		List<Unit> unitList = unitService.getAllUnit();
		
		billing.setCustomersMap(constructCUstomerMap(customersList));
		billing.setProductsMap(constructProductMap(productsList));
		billing.setBrandsMap(constructBrandMap(brandList));
		billing.setPackgingMap(constructPackingMap(packingList));
		billing.setQuantityMap(constructQuantityMap(quantityList));
		billing.setUnitMap(constructUnitMap(unitList));
		
	}
	
	public Map<String,String> constructCUstomerMap(List<Customer> customers) {
		return customers.stream()
	            .collect(Collectors.toMap(Customer :: getName, Customer :: getName));
	}
	
	public Map<String,String> constructProductMap(List<Product> products) {
		return products.stream()
	            .collect(Collectors.toMap(Product :: getName, Product :: getName));
	}
	
	public Map<String,String> constructBrandMap(List<Brand> brands) {
		return brands.stream()
	            .collect(Collectors.toMap(Brand :: getName, Brand :: getName));
	}
	
	public Map<String,String> constructPackingMap(List<Packing> packings) {
		return packings.stream()
	            .collect(Collectors.toMap(Packing :: getName, Packing :: getName));
	}
	
	public Map<String,String> constructQuantityMap(List<Quantity> quantities) {
		return quantities.stream()
	            .collect(Collectors.toMap(Quantity :: getName, Quantity :: getName));
	}
	
	public Map<String,String> constructUnitMap(List<Unit> units) {
		return units.stream()
	            .collect(Collectors.toMap(Unit :: getName, Unit :: getName));
	}


}
