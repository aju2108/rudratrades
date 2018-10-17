package com.rtc.service;

import java.util.List;

import com.rtc.model.Unit;

public interface UnitService {
	
	public void addUnit(Unit unit);

	public List<Unit> getAllUnit();

	public void deleteUnit(Integer unitId);

	public Unit getUnit(int unitId);
	
	public Unit updateUnit(Unit unit);

}
