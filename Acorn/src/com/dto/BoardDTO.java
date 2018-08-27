package com.dto;

public class BoardDTO {

	 private int num;
	 private String title;
	 private String userid;
	 private String content;
	 private String writeday;
	 private int readCnt;
	 private String fileName;
	 private String actualFile;

	public String getFileName() {
	    return fileName;
	}
	public void setFileName(String fileName) {
	    this.fileName = fileName;
	}
	public String getActualFile() {
	    return actualFile;
	}
	public void setActualFile(String actualFile) {
	    this.actualFile = actualFile;
	}
	private int boardGroup;
	 private int boardSeq;
	 private int boardLevel;
	 
	public int getBoardGroup() {
		return boardGroup;
	}
	public void setBoardGroup(int boardGroup) {
		this.boardGroup = boardGroup;
	}
	public int getBoardSeq() {
		return boardSeq;
	}
	public void setBoardSeq(int boardSeq) {
		this.boardSeq = boardSeq;
	}
	public int getBoardLevel() {
		return boardLevel;
	}
	public void setBoardLevel(int boardLevel) {
		this.boardLevel = boardLevel;
	}
	public BoardDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardDTO(int num, String title, String userid, String content, String writeday, int readCnt) {
		super();
		this.num = num;
		this.title = title;
		this.userid = userid;
		this.content = content;
		this.writeday = writeday;
		this.readCnt = readCnt;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getuserid() {
		return userid;
	}
	public void setuserid(String userid) {
		this.userid = userid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriteday() {
		return writeday;
	}
	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}
	public int getReadCnt() {
		return readCnt;
	}
	public void setReadCnt(int readCnt) {
		this.readCnt = readCnt;
	}
	@Override
	public String toString() {
	    return "BoardDTO [num=" + num + ", title=" + title + ", userid=" + userid + ", content=" + content
		    + ", writeday=" + writeday + ", readCnt=" + readCnt + ", fileName=" + fileName + ", actualFile="
		    + actualFile + ", boardGroup=" + boardGroup + ", boardSeq=" + boardSeq + ", boardLevel="
		    + boardLevel + "]";
	}

	 
	 
	 
	
}
