package com.rtc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.rtc.model.Brand;

@Repository
public class BrandDAOImpl implements BrandDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addBrand(Brand brand) {
		 sessionFactory.getCurrentSession().saveOrUpdate(brand);
	}

	@Override
	public List<Brand> getAllBrands() {
		return sessionFactory.getCurrentSession().createQuery("from Brand").list();
	}
	
	@Override
	public Brand getBrandByName(String brandName) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Brand.class);
		criteria.add(Restrictions.eq("name", brandName));
		Brand brand = (Brand) criteria.uniqueResult();
		return brand;
	}

	@Override
	public void deleteBrand(Integer brandId) {
		Brand brand = (Brand)sessionFactory.getCurrentSession().load(Brand.class, brandId);
	    if (brand != null) {
	      sessionFactory.getCurrentSession().delete(brand);
	    }
	}

	@Override
	public Brand getBrand(int brandId) {
		return (Brand)sessionFactory.getCurrentSession().get(Brand.class, Integer.valueOf(brandId));
	}

	@Override
	public Brand updateBrand(Brand brand) {
		sessionFactory.getCurrentSession().update(brand);
	    return brand;
	}

}
