package com.rtc.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users implements Serializable {

	private static final long serialVersionUID = -3465813074586302847L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column
	private String firstname;

	@Column
	private String lastname;

	@Column
	private String username;

	@Column
	private String password;
	
	@Column
	private String emailaddress;

	@Column
	private String phone1;

	@Column
	private String phone2;

	@Column
	private String bankname;
	
	@Column
	private String bankaccountnumber;

	@Column
	private String bankifsccode;

	@Column
	private String trademark;

	@Column
	private String vehicleno;
	
	@Column
	private String speciality;
	
	@Column
	private String company;

	@Column
	private String address;
	
	@Column
	private String statecode;

	@Column
	private String gstin;

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the firstname
	 */
	public String getFirstname() {
		return firstname;
	}

	/**
	 * @param firstname the firstname to set
	 */
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	/**
	 * @return the lastname
	 */
	public String getLastname() {
		return lastname;
	}

	/**
	 * @param lastname the lastname to set
	 */
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the emailaddress
	 */
	public String getEmailaddress() {
		return emailaddress;
	}

	/**
	 * @param emailaddress the emailaddress to set
	 */
	public void setEmailaddress(String emailaddress) {
		this.emailaddress = emailaddress;
	}

	/**
	 * @return the phone1
	 */
	public String getPhone1() {
		return phone1;
	}

	/**
	 * @param phone1 the phone1 to set
	 */
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}

	/**
	 * @return the phone2
	 */
	public String getPhone2() {
		return phone2;
	}

	/**
	 * @param phone2 the phone2 to set
	 */
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	/**
	 * @return the bankname
	 */
	public String getBankname() {
		return bankname;
	}

	/**
	 * @param bankname the bankname to set
	 */
	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	/**
	 * @return the bankaccountnumber
	 */
	public String getBankaccountnumber() {
		return bankaccountnumber;
	}

	/**
	 * @param bankaccountnumber the bankaccountnumber to set
	 */
	public void setBankaccountnumber(String bankaccountnumber) {
		this.bankaccountnumber = bankaccountnumber;
	}

	/**
	 * @return the bankifsccode
	 */
	public String getBankifsccode() {
		return bankifsccode;
	}

	/**
	 * @param bankifsccode the bankifsccode to set
	 */
	public void setBankifsccode(String bankifsccode) {
		this.bankifsccode = bankifsccode;
	}

	/**
	 * @return the trademark
	 */
	public String getTrademark() {
		return trademark;
	}

	/**
	 * @param trademark the trademark to set
	 */
	public void setTrademark(String trademark) {
		this.trademark = trademark;
	}

	/**
	 * @return the vehicleno
	 */
	public String getVehicleno() {
		return vehicleno;
	}

	/**
	 * @param vehicleno the vehicleno to set
	 */
	public void setVehicleno(String vehicleno) {
		this.vehicleno = vehicleno;
	}

	/**
	 * @return the speciality
	 */
	public String getSpeciality() {
		return speciality;
	}

	/**
	 * @param speciality the speciality to set
	 */
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	/**
	 * @return the company
	 */
	public String getCompany() {
		return company;
	}

	/**
	 * @param company the company to set
	 */
	public void setCompany(String company) {
		this.company = company;
	}

	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}

	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/**
	 * @return the statecode
	 */
	public String getStatecode() {
		return statecode;
	}

	/**
	 * @param statecode the statecode to set
	 */
	public void setStatecode(String statecode) {
		this.statecode = statecode;
	}

	/**
	 * @return the gstin
	 */
	public String getGstin() {
		return gstin;
	}

	/**
	 * @param gstin the gstin to set
	 */
	public void setGstin(String gstin) {
		this.gstin = gstin;
	}

}
