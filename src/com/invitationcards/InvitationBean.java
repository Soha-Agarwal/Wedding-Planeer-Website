package com.invitationcards;

public class InvitationBean 
{
int template_id;
String image;
int price;


public int getTemplate_id()
{
	return template_id;
}


public int getPrice()
{
	return price;
}

public String getImage()
{
	return image;
}

//Setting the values
public void setTemplate_id(int template_id)
{
	this.template_id=template_id;
}

public void setPrice(int price)
{
	this.price=price;
}

public void setImage(String image)
{
	this.image=image;
}

}
