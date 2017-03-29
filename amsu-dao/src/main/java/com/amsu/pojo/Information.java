package com.amsu.pojo;

import java.io.Serializable;
import java.util.Date;

public class Information implements Serializable {
    private Integer id;

    private String title;

    private Date date;

    private Date createtime;

    private Date updatetime;

    private Integer orders;

    private String year;
    
    private String monthAndDay;
    private static final long serialVersionUID = 1L;
	public Information() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Information(Integer id, String title, Date date, Date createtime, Date updatetime, Integer orders,
			String year, String monthAndDay) {
		super();
		this.id = id;
		this.title = title;
		this.date = date;
		this.createtime = createtime;
		this.updatetime = updatetime;
		this.orders = orders;
		this.year = year;
		this.monthAndDay = monthAndDay;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	public Integer getOrders() {
		return orders;
	}
	public void setOrders(Integer orders) {
		this.orders = orders;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonthAndDay() {
		return monthAndDay;
	}
	public void setMonthAndDay(String monthAndDay) {
		this.monthAndDay = monthAndDay;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Information [id=" + id + ", title=" + title + ", date=" + date + ", createtime=" + createtime
				+ ", updatetime=" + updatetime + ", orders=" + orders + ", year=" + year + ", monthAndDay="
				+ monthAndDay + "]";
	}

   
}