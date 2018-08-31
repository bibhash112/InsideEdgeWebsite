package com.InsideEdge.Pojo;

public class News {
	private int id;
	private String title;
	public News(int id, String title) {
		super();
		this.id = id;
		this.title = title;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "News [id=" + id + ", title=" + title + "]";
	}
	

}
