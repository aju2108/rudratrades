package com.rtc.dao;

import java.util.List;

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
		criteria.add(Restrictions.eq("brand.id", brandId));
		criteria.add(Restrictions.eq("product.id", productId));
		criteria.add(Restrictions.eq("packing.id", packingId));
		BrandProductPackingRateTaxMapping brandProductPackingRateTaxMapping = (BrandProductPackingRateTaxMapping) criteria.uniqueResult();
		return brandProductPackingRateTaxMapping;
	}

	@Override
	public BrandProductPackingRateTaxMapping updateBrandProductPackingRateTaxMapping(BrandProductPackingRateTaxMapping brandProductPackingRateTaxMapping) {
		sessionFactory.getCurrentSession().update(brandProductPackingRateTaxMapping);
	    return brandProductPackingRateTaxMapping;
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<BrandProductPackingRateTaxMapping> getAllRates() {
		return sessionFactory.getCurrentSession().createQuery("from BrandProductPackingRateTaxMapping").list();
	}

}
