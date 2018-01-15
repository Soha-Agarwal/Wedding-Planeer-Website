package com.caterer;
public class CatererBean {
	String packagename;
	int price;
	int trad_id;
	String veg_nonveg;
	String type1,type2,type3,type4,type5,type6,type7;
	String name1,name2,name3,name4,name5,name6,name7;
	int p_id;
	String trad_name;
	
	public String getType1()
	{
		return type1;
	}
	public String getType2()
	{
		return type2;
	}
	public String getType3()
	{
		return type3;
	}
	public String getType4()
	{
		return type4;
	}
	public String getType5()
	{
		return type5;
	}
	public String getType6()
	{
		return type6;
	}
	public String getType7()
	{
		return type7;
	}
	
	public String getPackagename()
	{
		return packagename;
	}
	public String getName1()
	{
		return name1;
	}
	public String getName2()
	{
		return name2;
	}
	public String getName3()
	{
		return name3;
	}
	public String getName4()
	{
		return name4;
	}
	public String getName5()
	{
		return name5;
	}
	
	public int getPrice()
	{
		return price;
	}
	
	public String getTrad_name()
	{
		return trad_name;
	}
	public String getVeg_nonveg()
	{
		return veg_nonveg;
	}
	public int getP_id()
	{
		return p_id;
	}
	public int getTrad_id()
	{
		return trad_id;
	}
	
	public void setTrad_name(String trad_name)
	{
		this.trad_name=trad_name;
	}

	public void setPackagename(String packagename)
	{
		this.packagename=packagename;
	}
	
	public void setPrice(int price)
	{
		this.price=price;
	}
	/*public void setName(String Name)
	{
		this.name=Name;
	}
/*	public void setType(String Type)
	{
		this.type=Type;
	}*/
	public void setVeg_NonVeg(String Veg_NonVeg)
	{
		this.veg_nonveg=Veg_NonVeg;
	}
	public void setP_id(int P_id)
	{
		this.p_id=P_id;
	}
	public void setTrad_id(int Trad_id)
	{
		this.trad_id=Trad_id;
	}
}