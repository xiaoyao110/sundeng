package com.zlk.plan.entity;
/*创建分页属性*/
public class Pagination {

	/**当前页*/
	private Integer page;
	/**每页显示的条数*/
	private Integer limit;
	/**起始页*/
	private Integer startPage;
	
	public Integer getStartPage() {
		return startPage;
	}
	public void setStartPage(Integer startPage) {
		this.startPage = startPage;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getLimit() {
		return limit;
	}
	public void setLimit(Integer limit) {
		this.limit = limit;
	}
	
	
}
