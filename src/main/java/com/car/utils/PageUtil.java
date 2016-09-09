package com.car.utils;

/**
 * ��ҳ������
 * 2016��4��19��10:20:42
 * @author ��Ԫ��
 *
 */
public class PageUtil {
	private String page ;//��������
	private int prevPage; //��һҳ
	private int nextPage; //��һҳ
	private int lastPage; //ĩҳ
	private int currentPage; //��ǰҳ
	private int pageSize; //ÿҳ����
	private int count;  //������
	private int startPage; //��ʼҳ
	
	public PageUtil() {
	}
	public PageUtil(String page, int pageSize, int count) {
		this.page = page;
		this.pageSize = pageSize;
		this.count = count;
		CurrentPage();
		PrevPage();
		LastPage();
		NextPage();
		StartPage();
		getpageSize();
	}
	//��ǰҳ
		private void CurrentPage() {
			
			if(("").equals(page)||page==null){
				page="1";
			}
			currentPage=Integer.parseInt(page);
		}
	//��һҳ
	private void PrevPage() {
		if(currentPage==1){
			prevPage=1;
		}else{
			prevPage=currentPage-1;
		}
	}
	//ĩҳ
		private void LastPage() {
			lastPage = count/pageSize;
			if(count%pageSize!=0){
				lastPage = lastPage+1;
			}
		}
	//��һҳ
	private void NextPage() {
		if(currentPage==lastPage){
			nextPage=lastPage;
		}else{
			nextPage=currentPage+1;
		}
	}
	//��ʼҳ
	private void StartPage() {
		
		startPage=(currentPage-1)*pageSize;
	}
	
	public int getPrevPage() {
		return prevPage;
	}
	public int getNextPage() {
		return nextPage;
	}
	public int getLastPage() {
		return lastPage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public int getStartPage() {
		return startPage;
	}
	
	public int getpageSize(){
		return pageSize;
	}
}
