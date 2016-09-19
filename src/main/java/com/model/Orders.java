package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Orders {

    @Id
    @GeneratedValue
    private int orderId;
    @OneToOne
    @JoinColumn(name = "cartId")
    private Cart cart;
    @OneToOne
    @JoinColumn(name = "mail_id")
    private UserDetails regdet;
   
 
    
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public UserDetails getRegdet() {
		return regdet;
	}
	public void setRegdet(UserDetails regdet) {
		this.regdet = regdet;
	}
	
    
	
}
