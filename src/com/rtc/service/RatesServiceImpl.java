package com.rtc.service;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rtc.beans.Rates;
import com.rtc.model.Brand;
import com.rtc.model.Packing;
import com.rtc.model.Product;

@Service
public class RatesServiceImpl implements RatesService {

	@Autowired
	private ProductService productService;

	@Autowired
	private PackingService packingService;

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

	public void setRatesMaps(Rates rate) {
		List<Product> productsList = productService.getAllProducts();
		List<Brand> brandList = brandService.getAllBrands();
		List<Packing> packingList = packingService.getAllPackings();
		rate.setProductsMap(constructProductMap(productsList));
		rate.setBrandsMap(constructBrandMap(brandList));
		rate.setPackgingMap(constructPackingMap(packingList));
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

}
