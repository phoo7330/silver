package com.scit.silver.vo;

public class SilverSearchHospital_Details {
	private int seach_seq;
	private int type;
	private String areaa;
	private String areab;
	private String areac;
	private String silvername;
	private String service;
	private String grade;
	private String lauitude;
	private String longitude;
	private int hp_details_seq;
	private int information_seq;
	private	String establishment;
	private String hp_service;
	private String protection;
	private String location;
	private String religion;
	private String hospital_tel;
	private String hp_address;
	private String holliday;
	private String lunchtime;
	private String receipttime;
	private String facilityinformation;
	
	public SilverSearchHospital_Details(int seach_seq, int type, String areaa, String areab, String areac,
			String silvername, String service, String grade, String lauitude, String longitude, int hp_details_seq,
			int information_seq, String establishment, String hp_service, String protection, String location,
			String religion, String hospital_tel, String hp_address, String holliday, String lunchtime,
			String receipttime, String facilityinformation) {
		super();
		this.seach_seq = seach_seq;
		this.type = type;
		this.areaa = areaa;
		this.areab = areab;
		this.areac = areac;
		this.silvername = silvername;
		this.service = service;
		this.grade = grade;
		this.lauitude = lauitude;
		this.longitude = longitude;
		this.hp_details_seq = hp_details_seq;
		this.information_seq = information_seq;
		this.establishment = establishment;
		this.hp_service = hp_service;
		this.protection = protection;
		this.location = location;
		this.religion = religion;
		this.hospital_tel = hospital_tel;
		this.hp_address = hp_address;
		this.holliday = holliday;
		this.lunchtime = lunchtime;
		this.receipttime = receipttime;
		this.facilityinformation = facilityinformation;
	}

	public SilverSearchHospital_Details() {
		super();
	}

	public int getSeach_seq() {
		return seach_seq;
	}

	public void setSeach_seq(int seach_seq) {
		this.seach_seq = seach_seq;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getAreaa() {
		return areaa;
	}

	public void setAreaa(String areaa) {
		this.areaa = areaa;
	}

	public String getAreab() {
		return areab;
	}

	public void setAreab(String areab) {
		this.areab = areab;
	}

	public String getAreac() {
		return areac;
	}

	public void setAreac(String areac) {
		this.areac = areac;
	}

	public String getSilvername() {
		return silvername;
	}

	public void setSilvername(String silvername) {
		this.silvername = silvername;
	}

	public String getService() {
		return service;
	}

	public void setService(String service) {
		this.service = service;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getLauitude() {
		return lauitude;
	}

	public void setLauitude(String lauitude) {
		this.lauitude = lauitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public int getHp_details_seq() {
		return hp_details_seq;
	}

	public void setHp_details_seq(int hp_details_seq) {
		this.hp_details_seq = hp_details_seq;
	}

	public int getInformation_seq() {
		return information_seq;
	}

	public void setInformation_seq(int information_seq) {
		this.information_seq = information_seq;
	}

	public String getEstablishment() {
		return establishment;
	}

	public void setEstablishment(String establishment) {
		this.establishment = establishment;
	}

	public String getHp_service() {
		return hp_service;
	}

	public void setHp_service(String hp_service) {
		this.hp_service = hp_service;
	}

	public String getProtection() {
		return protection;
	}

	public void setProtection(String protection) {
		this.protection = protection;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getHospital_tel() {
		return hospital_tel;
	}

	public void setHospital_tel(String hospital_tel) {
		this.hospital_tel = hospital_tel;
	}

	public String getHp_address() {
		return hp_address;
	}

	public void setHp_address(String hp_address) {
		this.hp_address = hp_address;
	}

	public String getHolliday() {
		return holliday;
	}

	public void setHolliday(String holliday) {
		this.holliday = holliday;
	}

	public String getLunchtime() {
		return lunchtime;
	}

	public void setLunchtime(String lunchtime) {
		this.lunchtime = lunchtime;
	}

	public String getReceipttime() {
		return receipttime;
	}

	public void setReceipttime(String receipttime) {
		this.receipttime = receipttime;
	}

	public String getFacilityinformation() {
		return facilityinformation;
	}

	public void setFacilityinformation(String facilityinformation) {
		this.facilityinformation = facilityinformation;
	}

	@Override
	public String toString() {
		return "SilverSearchHospital_Details [seach_seq=" + seach_seq + ", type=" + type + ", areaa=" + areaa
				+ ", areab=" + areab + ", areac=" + areac + ", silvername=" + silvername + ", service=" + service
				+ ", grade=" + grade + ", lauitude=" + lauitude + ", longitude=" + longitude + ", hp_details_seq="
				+ hp_details_seq + ", information_seq=" + information_seq + ", establishment=" + establishment
				+ ", hp_service=" + hp_service + ", protection=" + protection + ", location=" + location + ", religion="
				+ religion + ", hospital_tel=" + hospital_tel + ", hp_address=" + hp_address + ", holliday=" + holliday
				+ ", lunchtime=" + lunchtime + ", receipttime=" + receipttime + ", facilityinformation="
				+ facilityinformation + "]";
	}
	
}