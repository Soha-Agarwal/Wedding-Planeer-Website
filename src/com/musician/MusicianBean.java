package com.musician;

public class MusicianBean {
	int mid,price;
	String name;
	String type;
	long phone;
	/*public Blob img=null;//Temporary
	public byte[] bytes;*/
	public String img=null;
	int Trad_id;
	public int getMid() {
		return mid;
	}
	public void setDid(int mid) {
		this.mid = mid;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public long getPhone() {
		return phone;
	}
	public void setPhone(long phone) {
		this.phone=phone;
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
