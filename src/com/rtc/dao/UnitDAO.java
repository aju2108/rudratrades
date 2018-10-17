package com.rtc.dao;

import java.util.List;

import com.rtc.model.Unit;

public interface UnitDAO {
	
	public void addUnit(Unit unit);

	public List<Unit> getAllUnits();

	public void deleteUnit(int unitId);

	public Unit updateUnit(Unit unit);

	public Unit getUnit(int unitId);
	
}
