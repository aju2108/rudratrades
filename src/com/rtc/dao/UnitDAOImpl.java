package com.rtc.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.rtc.model.Unit;

@Repository
public class UnitDAOImpl implements UnitDAO{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addUnit(Unit unit) {
		sessionFactory.getCurrentSession().saveOrUpdate(unit);
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Unit> getAllUnits() {
		return sessionFactory.getCurrentSession().createQuery("from Unit").list();
	}

	@Override
	public void deleteUnit(int unitId) {
		Unit Unit = (Unit) sessionFactory.getCurrentSession().load(Unit.class, unitId);
		if (!StringUtils.isEmpty(Unit)) {
			this.sessionFactory.getCurrentSession().delete(Unit);
		}
	}

	@Override
	public Unit updateUnit(Unit unit) {
		sessionFactory.getCurrentSession().update(unit);
		return unit;
	}

	@Override
	public Unit getUnit(int unitId) {
		return (Unit) sessionFactory.getCurrentSession().get(Unit.class, unitId);
	}

}
