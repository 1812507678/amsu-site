package com.amsu.pojo;

import java.util.List;

public class ReturnPage {
	private int pageNumbers;
	private List<Information> list;
	private Information topInformation;
	public ReturnPage() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReturnPage(int pageNumbers, List<Information> list, Information topInformation) {
		super();
		this.pageNumbers = pageNumbers;
		this.list = list;
		this.topInformation = topInformation;
	}
	public int getPageNumbers() {
		return pageNumbers;
	}
	public void setPageNumbers(int pageNumbers) {
		this.pageNumbers = pageNumbers;
	}
	public List<Information> getList() {
		return list;
	}
	public void setList(List<Information> list) {
		this.list = list;
	}
	public Information getTopInformation() {
		return topInformation;
	}
	public void setTopInformation(Information topInformation) {
		this.topInformation = topInformation;
	}
	
}
