package com.dto;

public class ReservationDTO {
	private String userid;
	private String username;
	private String floor;
	private String fieldNum;
	private String playYear;
	private String playMonth;
	private String playDay;
	private String playTime;
	private String passwd;

	public ReservationDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "ReservationDTO [userid=" + userid + ", username=" + username + ", floor=" + floor + ", fieldNum="
				+ fieldNum + ", playYear=" + playYear + ", playMonth=" + playMonth + ", playDay=" + playDay
				+ ", playTime=" + playTime + ", passwd=" + passwd + "]";
	}

	public ReservationDTO(String userid, String username, String floor, String fieldNum, String playYear,
			String playMonth, String playDay, String playTime, String passwd) {
		super();
		this.userid = userid;
		this.username = username;
		this.floor = floor;
		this.fieldNum = fieldNum;
		this.playYear = playYear;
		this.playMonth = playMonth;
		this.playDay = playDay;
		this.playTime = playTime;
		this.passwd = passwd;
	}

	public String getPlayTime() {
		return playTime;
	}

	public void setPlayTime(String playTime) {
		this.playTime = playTime;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public String getFieldNum() {
		return fieldNum;
	}

	public void setFieldNum(String fieldNum) {
		this.fieldNum = fieldNum;
	}

	public String getPlayYear() {
		return playYear;
	}

	public void setPlayYear(String playYear) {
		this.playYear = playYear;
	}

	public String getPlayMonth() {
		return playMonth;
	}

	public void setPlayMonth(String playMonth) {
		this.playMonth = playMonth;
	}

	public String getPlayDay() {
		return playDay;
	}

	public void setPlayDay(String playDay) {
		this.playDay = playDay;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

}
