package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {
	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int productid;
	@Column
	private String productname;
	@Column
	private int productquantity;
	@Column
	private int productprice;
	@Column
	private String productdescription;
    @Column
    private String category;
    private String imagename;
	@Transient
	private  MultipartFile image;

    

	public int getProductprice() {
		return productprice;
	}

	public void setProductprice(int productprice) {
		this.productprice = productprice;
	}

	public String getImagename() {
		return imagename;
	}

	public void setImagename(String imagename) {
		this.imagename = imagename;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImage(MultipartFile image) {
		this.image = image;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Product() {
	}

	public Product(int productid, String productname, int productquantity, String productdescription) {
		this.productid = productid;
		this.productname = productname;
		this.productquantity = productquantity;
		this.productdescription = productdescription;
	}

	public int getproductid() {
		return productid;
	}

	public void setproductid(int productid) {
		this.productid = productid;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public int getProductquantity() {
		return productquantity;
	}

	public void setProductquantity(int productquantity) {
		this.productquantity = productquantity;
	}

	public String getProductdescription() {
		return productdescription;
	}

	public void setProductdescription(String productdescription) {
		this.productdescription = productdescription;
	}

}
