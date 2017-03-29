package com.amsu.pojo;

import java.io.Serializable;

public class Page implements Serializable {
	// 这是要查第几页
	private int pageNumber = 1;
	// 一页多少数据
	private int numbers = 3;
	// 前置数字
	private int prenumbers = (pageNumber-1)*numbers;
	public Page() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Page(int pageNumber, int numbers, int prenumbers) {
		super();
		this.pageNumber = pageNumber;
		this.numbers = numbers;
		this.prenumbers = prenumbers;
	}
	
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public int getNumbers() {
		return numbers;
	}
	public void setNumbers(int numbers) {
		this.numbers = numbers;
	}
	public int getPrenumbers() {
		return prenumbers;
	}
	public void setPrenumbers() {
		prenumbers = (pageNumber-1)*numbers;
	}
	@Override
	public String toString() {
		return "Page [pageNumber=" + pageNumber + ", numbers=" + numbers + ", prenumbers=" + prenumbers + "]";
	}

}
