package com.rtc.dao;

import java.util.List;

import com.rtc.model.BrandProductPackingMapping;

public interface BrandProductPackingMappingDAO {

	public void addBrandProductPackingMapping(BrandProductPackingMapping brandProductPackingMapping);

	public BrandProductPackingMapping getMappingByBrandProductPacking(int brandId, int productId, int packingId);
	
	public List<BrandProductPackingMapping> gePackingByBrandProduct(int brandId, int productId);

	public BrandProductPackingMapping updateBrandProductPackingMapping(BrandProductPackingMapping brandProductPackingMapping);

	public List<BrandProductPackingMapping> getAllPackingss();
	
}
