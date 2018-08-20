package com.help.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "HELPER")
public class Helper {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "helper_name")
	private String helperName;
	@Column(name = "help_for")
	private String helpFor;
	@Column(name = "helper_type")
	private String helperType;
	@Column(name = "mobile_no")
	private String mobileNo;
	@Column(name = "contact_no")
	private String contactNo;
	@Column(name = "email")
	private String email;
	@Column(name = "country_name ")
	private String countryName;
	@Column(name = "state_name")
	private String stateName;
	@Column(name = "city_name")
	private String cityName;
	@Column(name = "area_name")
	private String areaName;
	@Column(name = "address", columnDefinition = "TEXT")
	private String address;
	@Column(name = "landmark ")
	private String landmark;
	@Column(name = "description", columnDefinition = "TEXT")
	private String description;
	@Column(name = "created_time")
	private Calendar createdTime;
	@Column(name = "updated_time")
	private Calendar updatedTime;
	@Column(name = "created_ip")
	private String createdIP;
	@Column(name = "updated_ip")
	private String updatedIP;
	@Column(name = "post_status")
	private String status;

	public Helper() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getHelperName() {
		return helperName;
	}

	public void setHelperName(String helperName) {
		this.helperName = helperName;
	}

	public String getHelpFor() {
		return helpFor;
	}

	public void setHelpFor(String helpFor) {
		this.helpFor = helpFor;
	}

	public String getHelperType() {
		return helperType;
	}

	public void setHelperType(String helperType) {
		this.helperType = helperType;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public String getStateName() {
		return stateName;
	}

	public void setStateName(String stateName) {
		this.stateName = stateName;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public String getAreaName() {
		return areaName;
	}

	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLandmark() {
		return landmark;
	}

	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Calendar getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(Calendar createdTime) {
		this.createdTime = createdTime;
	}

	public Calendar getUpdatedTime() {
		return updatedTime;
	}

	public void setUpdatedTime(Calendar updatedTime) {
		this.updatedTime = updatedTime;
	}

	public String getCreatedIP() {
		return createdIP;
	}

	public void setCreatedIP(String createdIP) {
		this.createdIP = createdIP;
	}

	public String getUpdatedIP() {
		return updatedIP;
	}

	public void setUpdatedIP(String updatedIP) {
		this.updatedIP = updatedIP;
	}
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * {@inheritDoc}
	 */
	public boolean equals(Object o) {
		if (this == o) {
			return true;
		}
		if (!(o instanceof Helper)) {
			return false;
		}

		final Helper helper = (Helper) o;

		return !(id != null ? !id.equals(helper.getId())
				: helper.getId() != null);

	}

	/**
	 * {@inheritDoc}
	 */
	public int hashCode() {
		return (id != null ? id.hashCode() : 0);
	}

	/**
	 * {@inheritDoc}
	 */
	public String toString() {
		StringBuffer sb = new StringBuffer();
		sb.append("name : ");
		sb.append(this.helperName);
		return sb.toString();
	}

}
