package com.rtc.service;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.rtc.beans.Rates;
import com.rtc.model.Brand;
import com.rtc.model.BrandProductPackingRateTaxMapping;
import com.rtc.model.Packing;
import com.rtc.model.Product;
import com.rtc.model.Users;

@Service
public class RatesServiceImpl implements RatesService {

	@Autowired
	private ProductService productService;

	//@Autowired
	//private PackingService packingService;

	@Autowired
	private BrandService brandService;

	@Autowired
	private BrandProductPackingRateTaxMappingService brandProductPackingRateTaxMappingService;

	@Override
	public Rates showRates() {
		Rates rate = new Rates();
		setRatesMaps(rate);
		return rate;
	}
	
	@Override
	public List<Rates> addRates(Rates rates, HttpSession session) {
		BrandProductPackingRateTaxMapping bpprtm = constructRatesMapping(rates, session);
		BrandProductPackingRateTaxMapping bpprtmEntiry = brandProductPackingRateTaxMappingService.getMappingByBrandProductPacking(rates.getBrandId(), rates.getProductId(), rates.getPackingId());
		if(!StringUtils.isEmpty(bpprtmEntiry)){
			bpprtm.setId(bpprtmEntiry.getId());
		}
		brandProductPackingRateTaxMappingService.addBrandProductPackingRateTaxMapping(bpprtm);
		List<Rates> ratesList = getAllRates();
		return ratesList;
	}
	
	@Override
	public Map<String, String> getRateByBrandProductPacking(int brandId, int productId, int packingId) {
		Map<String, String> rateMap = new HashMap<String, String>();
		BrandProductPackingRateTaxMapping bpprtm = brandProductPackingRateTaxMappingService.getMappingByBrandProductPacking(brandId, productId, packingId);
		if(!StringUtils.isEmpty(bpprtm)){
			DecimalFormat df = new DecimalFormat("##0");
			rateMap.put("Rate", df.format((Math.round(bpprtm.getRate() * 100.0) / 100.0)));
			rateMap.put("GST", df.format((Math.round(bpprtm.getGST() * 100.0) / 100.0)));
			rateMap.put("CGST", df.format((Math.round(bpprtm.getCGST() * 100.0) / 100.0)));
			rateMap.put("SGST", df.format((Math.round(bpprtm.getSGST() * 100.0) / 100.0)));
			rateMap.put("IGST", df.format((Math.round(bpprtm.getIGST() * 100.0) / 100.0)));
		}else{
			rateMap.put("Rate", "");
			rateMap.put("GST", "");
			rateMap.put("CGST", "");
			rateMap.put("SGST", "");
			rateMap.put("IGST", "");
		}
		return rateMap;
	}
	
	@Override
	public List<Rates> getAllRates() {
		List<BrandProductPackingRateTaxMapping> ratesList = brandProductPackingRateTaxMappingService.getAllRates();
		List<Rates> rateList = new ArrayList<Rates>();
		ratesList.forEach(rates->{
			Rates rate = new Rates();
			rate.setId(rates.getId());
			rate.setBrand(rates.getBrand().getName());
			rate.setProduct(rates.getProduct().getName());
			rate.setPacking(rates.getPacking().getName());
			rate.setRate((int)rates.getRate());
			rate.setGst((int)rates.getGST());
			rate.setCgst((int)rates.getCGST());
			rate.setSgst((int)rates.getSGST());
			rate.setIgst((int)rates.getIGST());
			rate.setDate(new SimpleDateFormat("dd/MM/yyyy").format(rates.getModifiedDate()));
			rateList.add(rate);
		});
		return rateList;
	}
	
	public BrandProductPackingRateTaxMapping constructRatesMapping(Rates rates, HttpSession session) {
		Users users = (Users)session.getAttribute("userSession");
		BrandProductPackingRateTaxMapping  bpprtm = new BrandProductPackingRateTaxMapping();
		bpprtm.setBrand(new Brand(rates.getBrandId()));
		bpprtm.setPacking(new Packing(rates.getPackingId()));
		bpprtm.setProduct(new Product(rates.getProductId()));
		bpprtm.setRate(rates.getRate());
		bpprtm.setGST(rates.getGst());
		bpprtm.setSGST(rates.getSgst());
		bpprtm.setCGST(rates.getCgst());
		bpprtm.setIGST(rates.getIgst());
		bpprtm.setCreatedDate(new Date());
		bpprtm.setModifiedDate(new Date());
		bpprtm.setCreatedBy(users.getId());
		bpprtm.setModifiedBy(users.getId());
		return bpprtm;
	}

	public void setRatesMaps(Rates rate) {
		List<Product> productsList = productService.getAllProducts();
		List<Brand> brandList = brandService.getAllBrands();
		//List<Packing> packingList = packingService.getAllPackings();
		rate.setProductsMap(constructProductMap(productsList));
		rate.setBrandsMap(constructBrandMap(brandList));
		//rate.setPackgingMap(constructPackingMap(packingList));
	}

	public Map<Integer, String> constructProductMap(List<Product> products) {
		return products.stream().collect(Collectors.toMap(Product::getId, Product::getName));
	}

	public Map<Integer, String> constructBrandMap(List<Brand> brands) {
		return brands.stream().collect(Collectors.toMap(Brand::getId, Brand::getName));
	}

	/*public Map<Integer, String> constructPackingMap(List<Packing> packings) {
		return packings.stream().collect(Collectors.toMap(Packing::getId, Packing::getName));
	}*/
}
