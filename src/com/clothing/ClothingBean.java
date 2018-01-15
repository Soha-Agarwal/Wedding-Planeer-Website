package com.clothing;

public class ClothingBean {
	int gid,price;
	String name;
	String type;
	public String img=null;
	int Trad_id;
	public int getid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getTrad_id() {
		return Trad_id;
	}
	public void setTrad_id(int trad_id) {
		Trad_id = trad_id;
	}
	
}
