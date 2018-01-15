package com.decoration;

import com.mysql.jdbc.Blob;

public class DecorationBean {
	int did,price;
	String title;
	String type1,type2;
	/*public Blob img=null;//Temporary
	public byte[] bytes;*/
	public String img=null;
	int Trad_id;
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getType1() {
		return type1;
	}
	public void setType1(String type1) {
		this.type1 = type1;
	}
	public String getType2() {
		return type2;
	}
	public void setType2(String type2) {
		this.type2 = type2;
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
