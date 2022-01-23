package com.jaewui.app.util;

public class ObjectList {

	private Object[] nums;
	private int current;
	
	public ObjectList() {
		nums = new Object[3];
		current = 0;
	}
	
	public void add(Object num) {
		nums[current] = num;
		current++;
	}

	public void clear() {
		for(int i=0; i<current; i++) {
			nums[i] = 0;
		}
		current = 0;
		
	}

	public int size() {
		return current;
	}

	public Object get(int index) {
		if(current <= index) {
			throw new IndexOutOfBoundsException();
		}
		return nums[index];
	}

	
	
	
}
