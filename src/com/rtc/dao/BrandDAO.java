package com.rtc.dao;

import java.util.List;

import com.rtc.model.Brand;

public abstract interface BrandDAO {
	
	public void addBrand(Brand brand);

	public List<Brand> getAllBrands();

	public void deleteBrand(Integer brandId);

	public Brand getBrand(int brandId);
	
	public Brand getBrandByName(String brandName);

	public Brand updateBrand(Brand brand);

}
