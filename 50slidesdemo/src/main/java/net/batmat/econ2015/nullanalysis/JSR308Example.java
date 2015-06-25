package net.batmat.econ2015.nullanalysis;

import java.util.ArrayList;
import java.util.List;

import org.eclipse.jdt.annotation.NonNull;

public class JSR308Example {
	@NonNull
	private static final List<String> LIST = new ArrayList<>();

	public static void main(String[] args) {

		for (String element : LIST) {
			if (element == null) {
				throw new IllegalArgumentException();
			}
			System.out.println(element.charAt(0));
		}
	}
}
