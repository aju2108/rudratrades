package com.rtc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rtc.model.BrandProductPackingMapping;
import com.rtc.model.BrandProductPackingRateTaxMapping;

@Repository
public class BrandProductPackingMappingDAOImpl implements BrandProductPackingMappingDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addBrandProductPackingMapping(BrandProductPackingMapping brandProductPackingMapping) {
		sessionFactory.getCurrentSession().saveOrUpdate(brandProductPackingMapping);
	}

	@Override
	public BrandProductPackingMapping getMappingByBrandProductPacking(int brandId, int productId, int packingId) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(BrandProductPackingMapping.class);
		criteria.add(Restrictions.eq("brand.id", brandId));
		criteria.add(Restrictions.eq("product.id", productId));
		criteria.add(Restrictions.eq("packing.id", packingId));
		BrandProductPackingMapping brandProductPackingMapping = (BrandProductPackingMapping) criteria.uniqueResult();
		return brandProductPackingMapping;
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<BrandProductPackingMapping> gePackingByBrandProduct(int brandId, int productId) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(BrandProductPackingMapping.class);
		criteria.add(Restrictions.eq("brand.id", brandId));
		criteria.add(Restrictions.eq("product.id", productId));
		List<BrandProductPackingMapping> brandProductPackingMappingList = (List<BrandProductPackingMapping>) criteria.list();
		return brandProductPackingMappingList;
	}

	@Override
	public BrandProductPackingMapping updateBrandProductPackingMapping(BrandProductPackingMapping brandProductPackingMapping) {
		sessionFactory.getCurrentSession().update(brandProductPackingMapping);
		return brandProductPackingMapping;
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<BrandProductPackingMapping> getAllPackingss() {
		return sessionFactory.getCurrentSession().createQuery("from BrandProductPackingMapping").list();
	}

}
