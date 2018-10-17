package com.rtc.dao;

import com.rtc.model.Packing;
import java.util.List;

public abstract interface PackingDAO{
	
  public abstract void addpacking(Packing paramPacking);
  
  public abstract List<Packing> getAllPackings();
  
  public Packing getPackingByName(String packingName);
  
  public abstract void deletepacking(Integer paramInteger);
  
  public abstract Packing getpacking(int paramInt);
  
  public abstract Packing updatepacking(Packing paramPacking);
}