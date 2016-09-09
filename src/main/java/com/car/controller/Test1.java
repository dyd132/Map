package com.car.controller;

public class Test1 {

	public static void main(String[] args) {
		
		int[] arr={4,22,7,23,54,76,333,221,66,856};
		int s;
		for (int i = 0; i < arr.length; i++) {
			
			for (int j = i+1; j < arr.length; j++) {
				if(arr[i]>arr[j])
				{
					s=arr[i];
					arr[i]=arr[j];
					arr[j]=s;
				}
			}
		}
		for (int i = 0; i < arr.length; i++) {
			System.out.println(arr[i]);
		}
	}
}
