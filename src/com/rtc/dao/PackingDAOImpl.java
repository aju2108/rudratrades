package com.rtc.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.rtc.model.Packing;

@Repository
public class PackingDAOImpl implements PackingDAO {

	@org.springframework.beans.factory.annotation.Autowired
	private SessionFactory sessionFactory;

	public PackingDAOImpl() {
	}

	public int addpacking(Packing packing) {
		int packingId = (Integer)sessionFactory.getCurrentSession().save(packing);
		return packingId;
	}

	public List<Packing> getAllPackings() {
		return sessionFactory.getCurrentSession().createQuery("from Packing").list();
	}

	@Override
	public Packing getPackingByName(String packingName) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Packing.class);
		criteria.add(Restrictions.eq("name", packingName));
		Packing packing = (Packing) criteria.uniqueResult();
		return packing;
	}

	public void deletepacking(Integer packingId) {
		Packing packing = (Packing) sessionFactory.getCurrentSession().load(Packing.class, packingId);
		if (packing != null) {
			sessionFactory.getCurrentSession().delete(packing);
		}
	}

	public Packing getpacking(int packingid) {
		return (Packing) sessionFactory.getCurrentSession().get(Packing.class, Integer.valueOf(packingid));
	}

	public Packing updatepacking(Packing packing) {
		sessionFactory.getCurrentSession().update(packing);
		return packing;
	}
}