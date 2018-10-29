package com.rtc.beans;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.rtc.model.Customer;


public class Billing extends BillDetails{
	
	public Billing() {
		
	}
	
	
  public Billing(String product, String hsnCode, String brand, String packing, String quantity, String unit,
		  Double rate, Double gst, Double amount) {
		super(product, hsnCode, brand, packing, quantity, unit, rate, gst, amount);
  }


private String customer;
  private Customer customerObj;
  private Date date;
  private String buttonName;
  private double sgst;
  private double cgst;
  private double igst;
  private double total;
  private double netAmount;
  private String dateTime;
  private BillDetails billDetails;
  
  
  
  /**
 * @return the billDetails
 */
public BillDetails getBillDetails() {
	return billDetails;
}


/**
 * @param billDetails the billDetails to set
 */
public void setBillDetails(BillDetails billDetails) {
	this.billDetails = billDetails;
}


  Map<String, String> customersMap = new HashMap<String, String>();
  Map<String, String> productsMap = new HashMap<String, String>();
  Map<String, String> brandsMap = new HashMap<String, String>();
  Map<String, String> packgingMap = new HashMap<String, String>();
  Map<String, String> quantityMap = new HashMap<String, String>();
  Map<String, String> unitMap = new HashMap<String, String>();
  Map<Integer, Billing> billMap = new HashMap<Integer, Billing>();
  
  
  public String getCustomer()
  {
    return customer;
  }
  

  public void setCustomer(String customer)
  {
    this.customer = customer;
  }
  

  public Customer getCustomerObj()
  {
    return customerObj;
  }
  

  public void setCustomerObj(Customer customerObj)
  {
    this.customerObj = customerObj;
  }
  

  public Date getDate()
  {
    return date;
  }
  

  public void setDate(Date date)
  {
    this.date = date;
  }

  public String getButtonName()
  {
    return buttonName;
  }
  

  public void setButtonName(String buttonName)
  {
    this.buttonName = buttonName;
  }
	
	public double getSgst() {
		return sgst;
	}

	public void setSgst(double sgst) {
		this.sgst = sgst;
	}

	public double getCgst() {
		return cgst;
	}
	
	public void setCgst(double cgst) {
		this.cgst = cgst;
	}
	
	public double getIgst() {
		return igst;
	}
	
	public void setIgst(double igst) {
		this.igst = igst;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public double getNetAmount() {
		return netAmount;
	}

	public void setNetAmount(double netAmount) {
		this.netAmount = netAmount;
	}
	public String getDateTime() {
		return dateTime;
	}

	public void setDateTime(String dateTime) {
		this.dateTime = dateTime;
	}

	public Map<String, String> getCustomersMap() {
		return customersMap;
	}
  


  public void setCustomersMap(Map<String, String> customersMap)
  {
    this.customersMap = customersMap;
  }
  


  public Map<String, String> getProductsMap()
  {
    return productsMap;
  }
  


  public void setProductsMap(Map<String, String> productsMap)
  {
    this.productsMap = productsMap;
  }

  /**
 * @return the brandsMap
 */
public Map<String, String> getBrandsMap() {
	return brandsMap;
}


/**
 * @param brandsMap the brandsMap to set
 */
public void setBrandsMap(Map<String, String> brandsMap) {
	this.brandsMap = brandsMap;
}


public Map<String, String> getPackgingMap()
  {
    return packgingMap;
  }
  


  public void setPackgingMap(Map<String, String> packgingMap)
  {
    this.packgingMap = packgingMap;
  }
  


  public Map<String, String> getQuantityMap()
  {
    return quantityMap;
  }
  


  public void setQuantityMap(Map<String, String> quantityMap)
  {
    this.quantityMap = quantityMap;
  }
  


  public Map<String, String> getUnitMap()
  {
    return unitMap;
  }
  


  public void setUnitMap(Map<String, String> unitMap)
  {
    this.unitMap = unitMap;
  }
  

  public Map<Integer, Billing> getBillMap()
  {
    return billMap;
  }
  

  public void setBillMap(Map<Integer, Billing> billMap)
  {
    this.billMap = billMap;
  }
}