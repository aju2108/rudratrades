package com.rtc.service;

import com.rtc.model.BrandProductPackingRateTaxMapping;

public interface BrandProductPackingRateTaxMappingService {
	
	public abstract void addBrandProductPackingRateTaxMapping(BrandProductPackingRateTaxMapping brandProductPackingRateTaxMapping);

	public abstract BrandProductPackingRateTaxMapping getMappingByBrandProductPacking(int brandId, int productId, int packingId);

	public abstract BrandProductPackingRateTaxMapping updateBrand(BrandProductPackingRateTaxMapping brandProductPackingRateTaxMapping);

}
