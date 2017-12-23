package org.java.entity;

public class PageBean {

	private int pageSize;
	private int pagecurr;
	private int total;
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPagecurr() {
		return pagecurr;
	}
	public void setPagecurr(int pagecurr) {
		this.pagecurr = pagecurr;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public PageBean(int pageSize, int pagecurr, int total) {
		super();
		this.pageSize = pageSize;
		this.pagecurr = pagecurr;
		this.total = total;
	}
	public PageBean() {
		super();		
	}	
}
