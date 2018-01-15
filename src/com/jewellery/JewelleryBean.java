package com.jewellery;

public class JewelleryBean
{
	int Trad_id;
int Jewel_id;
String type;		//bangles,necklace..
String name;
String img;
int price;

public int getTrad_id()
{
	return Trad_id;
}

public int getJewel_id()
{
	return Jewel_id;
}

public String getType()
{
	return type;
}

public String getName()
{
	return name;
}

public String getImg()
{
	return img;
}

public int getPrice()
{
	return price;
}

//-----------------------------------------------------------------

public void setTrad_id(int Trad_id)
{
	this.Trad_id=Trad_id;
}

public void setJewel_id(int Jewel_id)
{
	this.Jewel_id=Jewel_id;
}

public void setType(String type)
{
	this.type=type;
}

public void setName(String name)
{
	this.name=name;
}

public void setImg(String img)
{
	this.img=img;
}


public void setPrice(int price)
{
	this.price=price;
}


}
