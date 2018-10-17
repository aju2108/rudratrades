package com.rtc.service;

import com.rtc.dao.PackingDAO;
import com.rtc.model.Packing;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class PackingServiceImpl implements PackingService{
	
  @Autowired
  private PackingDAO packingDAO;
  
  public PackingServiceImpl() {}
  
  @Transactional
  public void addPacking(Packing packing)
  {
    packingDAO.addpacking(packing);
  }

  @Transactional
  public List<Packing> getAllPackings()
  {
    return packingDAO.getAllPackings();
  }
  
  @Transactional
  public void deletePacking(Integer packingId)
  {
    packingDAO.deletepacking(packingId);
  }
  

  @Transactional
  public Packing getPacking(int packingid)
  {
    return packingDAO.getpacking(packingid);
  }
  
  @Transactional
  public Packing getPackingByName(String packingName) {
    return packingDAO.getPackingByName(packingName);
  }
  
  @Transactional
  public Packing updatePacking(Packing packing)
  {
    return packingDAO.updatepacking(packing);
  }
}