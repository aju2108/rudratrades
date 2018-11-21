package com.rtc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.rtc.dao.BrandProductPackingRateTaxMappingDAO;
import com.rtc.model.BrandProductPackingRateTaxMapping;

@Service
@Transactional
public class BrandProductPackingRateTaxMappingServiceImpl implements BrandProductPackingRateTaxMappingService{
	
	@Autowired
	BrandProductPackingRateTaxMappingDAO brandProductPackingRateTaxMappingDAO;

	@Override
	public void addBrandProductPackingRateTaxMapping(BrandProductPackingRateTaxMapping brandProductPackingRateTaxMapping) {
		brandProductPackingRateTaxMappingDAO.addBrandProductPackingRateTaxMapping(brandProductPackingRateTaxMapping);
	}

	@Override
	public BrandProductPackingRateTaxMapping getMappingByBrandProductPacking(int brandId, int productId, int packingId) {
		return brandProductPackingRateTaxMappingDAO.getMappingByBrandProductPacking(brandId, productId, packingId);
	}

	@Override
	public BrandProductPackingRateTaxMapping updateBrand(BrandProductPackingRateTaxMapping brandProductPackingRateTaxMapping) {
		return brandProductPackingRateTaxMappingDAO.updateBrandProductPackingRateTaxMapping(brandProductPackingRateTaxMapping);
	}

	@Override
	public List<BrandProductPackingRateTaxMapping> getAllRates() {
		return brandProductPackingRateTaxMappingDAO.getAllRates();
	}
}
