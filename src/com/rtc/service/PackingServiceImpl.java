package com.rtc.service;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import com.rtc.beans.Packings;
import com.rtc.beans.Rates;
import com.rtc.dao.BrandProductPackingMappingDAO;
import com.rtc.dao.PackingDAO;
import com.rtc.model.Brand;
import com.rtc.model.BrandProductPackingMapping;
import com.rtc.model.BrandProductPackingRateTaxMapping;
import com.rtc.model.Packing;
import com.rtc.model.Product;
import com.rtc.model.Users;

@Service
@Transactional
public class PackingServiceImpl implements PackingService {

	@Autowired
	private PackingDAO packingDAO;
	
	@Autowired
	private BrandProductPackingMappingDAO brandProductPackingMappingDAO;

	@Autowired
	private ProductService productService;

	@Autowired
	private BrandService brandService;

	public PackingServiceImpl() {
	}

	@Override
	public Packings getPackings() {
		Packings packings = new Packings();
		setPackingsMaps(packings);
		return packings;
	}
	
	@Override
	public void addPackings(Packings packings, HttpSession session) {
		int packingId = 0;
		Packing packing = constructPackings(packings, session);
		Packing packingEntity = packingDAO.getPackingByName(packings.getPacking());
		if(StringUtils.isEmpty(packingEntity)){
			packingId = packingDAO.addpacking(packing);
		}else{
			packingId = packingEntity.getId();
		}
		
		BrandProductPackingMapping brandProductPackingMapping = brandProductPackingMappingDAO.getMappingByBrandProductPacking(packings.getBrandId(), packings.getProductId(), packingId);
		if(StringUtils.isEmpty(brandProductPackingMapping)){
			BrandProductPackingMapping bppm = constructPackingsMapping(packings, session, packingId);
			brandProductPackingMappingDAO.addBrandProductPackingMapping(bppm);
		}
	}
	
	@Override
	public List<BrandProductPackingMapping> gePackingByBrandProduct(int brandId, int productId) {
		return brandProductPackingMappingDAO.gePackingByBrandProduct(brandId, productId);
	}
	
	public Packing constructPackings(Packings packings, HttpSession session) {
		Users users = (Users)session.getAttribute("userSession");
		Packing packing = new Packing();
		packing.setName(packings.getPacking());
		packing.setCreatedDate(new Date());
		packing.setModifiedDate(new Date());
		packing.setCreatedBy(users.getId());
		packing.setModifiedBy(users.getId());
		return packing;
	}
	
	public BrandProductPackingMapping constructPackingsMapping(Packings packings, HttpSession session, int packingId) {
		Users users = (Users)session.getAttribute("userSession");
		BrandProductPackingMapping  bppm = new BrandProductPackingMapping();
		bppm.setBrand(new Brand(packings.getBrandId()));
		bppm.setProduct(new Product(packings.getProductId()));
		bppm.setPacking(new Packing(packingId));
		bppm.setCreatedDate(new Date());
		bppm.setModifiedDate(new Date());
		bppm.setCreatedBy(users.getId());
		bppm.setModifiedBy(users.getId());
		return bppm;
	}

	@Transactional
	public void addPacking(Packing packing) {
		packingDAO.addpacking(packing);
	}

	@Transactional
	public List<Packing> getAllPackings() {
		return packingDAO.getAllPackings();
	}

	@Transactional
	public void deletePacking(Integer packingId) {
		packingDAO.deletepacking(packingId);
	}

	@Transactional
	public Packing getPacking(int packingid) {
		return packingDAO.getpacking(packingid);
	}

	@Transactional
	public Packing getPackingByName(String packingName) {
		return packingDAO.getPackingByName(packingName);
	}

	@Transactional
	public Packing updatePacking(Packing packing) {
		return packingDAO.updatepacking(packing);
	}

	public void setPackingsMaps(Packings packings) {
		List<Product> productsList = productService.getAllProducts();
		List<Brand> brandList = brandService.getAllBrands();
		packings.setProductsMap(constructProductMap(productsList));
		packings.setBrandsMap(constructBrandMap(brandList));
	}

	public Map<Integer, String> constructProductMap(List<Product> products) {
		return products.stream().collect(Collectors.toMap(Product::getId, Product::getName));
	}
	
	public Map<Integer, String> constructBrandMap(List<Brand> brands) {
		return brands.stream().collect(Collectors.toMap(Brand::getId, Brand::getName));
	}
	
	@Override
	public String getHSNCode(int productId) {
		List<Product> productsList = productService.getAllProducts();
		Map<Integer, String> hsnMap = getHSNMap(productsList);
		return hsnMap.get(productId);
	}
	
	public Map<Integer, String> getHSNMap(List<Product> products) {
		return products.stream().collect(Collectors.toMap(Product::getId, Product::getHsncode));
	}
}