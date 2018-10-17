package com.rtc.service;

import com.rtc.model.Packing;
import java.util.List;

public abstract interface PackingService{
	
  public abstract void addPacking(Packing paramPacking);
  
  public abstract List<Packing> getAllPackings();
  
  public Packing getPackingByName(String packingName);
  
  public abstract void deletePacking(Integer paramInteger);
  
  public abstract Packing getPacking(int paramInt);
  
  public abstract Packing updatePacking(Packing paramPacking);
  
}