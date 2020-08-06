package com.cafe.erp.store.model;

import org.springframework.web.multipart.MultipartFile;

public class StockDTO {
	private int stock_code, account_number, stock_price ;
	private String stock_productname, stock_detailname, stock_standard;
	private String stock_image;
	private String account_name;
	
	public int getStock_code() {
		return stock_code;
	}
	public void setStock_code(int stock_code) {
		this.stock_code = stock_code;
	}
	public String getStock_productname() {
		return stock_productname;
	}
	public void setStock_productname(String stock_productname) {
		this.stock_productname = stock_productname;
	}
	public String getStock_detailname() {
		return stock_detailname;
	}
	public void setStock_detailname(String stock_detailname) {
		this.stock_detailname = stock_detailname;
	}
	public String getStock_standard() {
		return stock_standard;
	}
	public void setStock_standard(String stock_standard) {
		this.stock_standard = stock_standard;
	}
	public int getStock_price() {
		return stock_price;
	}
	public void setStock_price(int stock_price) {
		this.stock_price = stock_price;
	}
	public String getStock_image() {
		return stock_image;
	}
	public void setStock_image(String stock_image) {
		this.stock_image = stock_image;
	}
	public int getAccount_number() {
		return account_number;
	}
	public void setAccount_number(int delivery_number) {
		this.account_number = delivery_number;
	}
	public String getAccount_name() {
		return account_name;
	}
	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}
	
}
