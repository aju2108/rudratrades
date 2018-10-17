package com.rtc.dao;

import com.rtc.model.BrandProductPackingRateTaxMapping;

public interface BrandProductPackingRateTaxMappingDAO {

	public abstract void addBrandProductPackingRateTaxMapping(BrandProductPackingRateTaxMapping brandProductPackingRateTaxMapping);

	public abstract BrandProductPackingRateTaxMapping getMappingByBrandProductPacking(int brandId, int productId, int packingId);

	public abstract BrandProductPackingRateTaxMapping updateBrandProductPackingRateTaxMapping(BrandProductPackingRateTaxMapping brandProductPackingRateTaxMapping);

}
