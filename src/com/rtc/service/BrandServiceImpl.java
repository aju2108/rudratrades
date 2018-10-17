package com.rtc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rtc.dao.BrandDAO;
import com.rtc.model.Brand;

@Service
@Transactional
public class BrandServiceImpl implements BrandService{
	
	@Autowired
	private BrandDAO brandDAO;
	
	public BrandServiceImpl() {}
	  
	  @Transactional
	  public void addBrand(Brand brand)
	  {
		  brandDAO.addBrand(brand);
	  }

	  @Transactional
	  public List<Brand> getAllBrands()
	  {
	    return brandDAO.getAllBrands();
	  }
	  
	  @Transactional
	  public void deleteBrand(Integer brandId)
	  {
		  brandDAO.deleteBrand(brandId);
	  }
	  

	  @Transactional
	  public Brand getBrand(int brandId)
	  {
	    return brandDAO.getBrand(brandId);
	  }
	  
	  @Transactional
	  public Brand getBrandByName(String brandName) {
	    return brandDAO.getBrandByName(brandName);
	  }
	  
	  @Transactional
	  public Brand updateBrand(Brand brand)
	  {
	    return brandDAO.updateBrand(brand);
	  }

}
