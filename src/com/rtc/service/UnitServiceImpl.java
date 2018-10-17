package com.rtc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.rtc.dao.UnitDAO;
import com.rtc.model.Unit;

@Service
@Transactional
public class UnitServiceImpl implements UnitService{
	
	@Autowired
	private UnitDAO UnitDAO;

	@Override
	@Transactional
	public void addUnit(Unit unit) {
		UnitDAO.addUnit(unit);
	}

	@Override
	@Transactional
	public List<Unit> getAllUnit() {
		return UnitDAO.getAllUnits();
	}

	@Override
	@Transactional
	public void deleteUnit(Integer unitId) {
		UnitDAO.deleteUnit(unitId);
	}

	@Override
	@Transactional
	public Unit getUnit(int unitId) {
		return UnitDAO.getUnit(unitId);
	}
	
	@Override
	@Transactional
	public Unit updateUnit(Unit unit) {
		return UnitDAO.updateUnit(unit);
	}

}
