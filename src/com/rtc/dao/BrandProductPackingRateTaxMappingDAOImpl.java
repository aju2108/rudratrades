package com.rtc.dao;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rtc.model.BrandProductPackingRateTaxMapping;

@Repository
public class BrandProductPackingRateTaxMappingDAOImpl implements BrandProductPackingRateTaxMappingDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addBrandProductPackingRateTaxMapping(BrandProductPackingRateTaxMapping brandProductPackingRateTaxMapping) {
		sessionFactory.getCurrentSession().saveOrUpdate(brandProductPackingRateTaxMapping);
	}

	@Override
	public BrandProductPackingRateTaxMapping getMappingByBrandProductPacking(int brandId, int productId, int packingId) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(BrandProductPackingRateTaxMapping.class);
		criteria.add(Restrictions.eq("brandId", brandId));
		criteria.add(Restrictions.eq("productId", productId));
		criteria.add(Restrictions.eq("packingId", packingId));
		BrandProductPackingRateTaxMapping brandProductPackingRateTaxMapping = (BrandProductPackingRateTaxMapping) criteria.uniqueResult();
		return brandProductPackingRateTaxMapping;
	}

	@Override
	public BrandProductPackingRateTaxMapping updateBrandProductPackingRateTaxMapping(BrandProductPackingRateTaxMapping brandProductPackingRateTaxMapping) {
		sessionFactory.getCurrentSession().update(brandProductPackingRateTaxMapping);
	    return brandProductPackingRateTaxMapping;
	}

}
