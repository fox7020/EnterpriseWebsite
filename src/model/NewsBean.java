package model;

public class NewsBean {
	String title;
	String content;
	String picName;
	java.util.Date deadLine;
	
	@Override
	public String toString() {
		return "NewsBean [title=" + title + ", content=" + content + ", picName=" + picName + ", deadLine=" + deadLine
				+ "]";
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPicName() {
		return picName;
	}
	public void setPicName(String picName) {
		this.picName = picName;
	}
	public java.util.Date getDeadLine() {
		return deadLine;
	}
	public void setDeadLine(java.util.Date deadLine) {
		this.deadLine = deadLine;
	}
	
	
	
}
