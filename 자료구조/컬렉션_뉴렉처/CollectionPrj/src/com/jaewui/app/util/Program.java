package com.jaewui.app.util;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class Program {

	public static void main(String[] args) {
		
		//GList<String> list = new GList<>();
		
		List<String> list = new ArrayList<>();
		
		
		Set<String> set = new HashSet<>();
		
		set.add("1");
		set.add("2");
		int size = set.size();
		System.out.printf("size : %d\n", size);
		
		
		list.clear();
		size = list.size();
		System.out.printf("size : %d\n", size);
		
		list.add("7");
		list.add("7");
		list.add("7");
		list.add("7");
		list.add("7");
		list.add("7");
		list.add("7");
		list.add("7");
		list.add("7");
		list.add("7");
		list.add("7");
		list.add("7");
		String num = list.get(0);
		System.out.printf("num : %s\n", num);
		
		// num = (int)list.get(1);
		System.out.printf("num : %s\n", num);
		
		num = list.get(3);
		System.out.printf("num : %s\n", num);
		
		
		num = list.get(11);
		System.out.printf("num : %s\n", num);
		
		
	}
	
}
