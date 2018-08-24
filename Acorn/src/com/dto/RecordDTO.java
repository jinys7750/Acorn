package com.dto;

public class RecordDTO {
	 /*
    USERID VARCHAR2(10) PRIMARY KEY,
    PLAYYEAR VARCHAR2(4) NOT NULL,
    PLAYMONTH VARCHAR2(2) NOT NULL,
    PLAYDAY VARCHAR2(2) NOT NULL,
    MAXDISTANCE VARCHAR2(3) NOT NULL,
    HITBALL VARCHAR2(3) NOT NULL);
*/   
    private String userid;
    private String playYear;
    private String playMonth;
    private String playDay;
    private String maxDistance;
    private String hitBall;
	public RecordDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RecordDTO(String userid, String playYear, String playMonth, String playDay, String maxDistance,
			String hitBall) {
		super();
		this.userid = userid;
		this.playYear = playYear;
		this.playMonth = playMonth;
		this.playDay = playDay;
		this.maxDistance = maxDistance;
		this.hitBall = hitBall;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
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
	public String getMaxDistance() {
		return maxDistance;
	}
	public void setMaxDistance(String maxDistance) {
		this.maxDistance = maxDistance;
	}
	public String getHitBall() {
		return hitBall;
	}
	public void setHitBall(String hitBall) {
		this.hitBall = hitBall;
	}
	@Override
	public String toString() {
		return "RecordDTO [userid=" + userid + ", playYear=" + playYear + ", playMonth=" + playMonth + ", playDay="
				+ playDay + ", maxDistance=" + maxDistance + ", hitBall=" + hitBall + "]";
	}
    
	
    
}
