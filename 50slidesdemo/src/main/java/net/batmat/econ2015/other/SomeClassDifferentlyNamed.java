package net.batmat.econ2015.other;

import java.util.Arrays;
import java.util.List;

public class SomeClassDifferentlyNamed {
	public static List<String> hop = Arrays.asList("a", "b", "c");

	private String someAttribute;

	public static void main(String[] args) {

		hop.forEach(string -> {
			System.out.println(string);
		});

		int i = 1;
		String s = (hop != null) ? s = hop.get(0) : "somevalue";

		String a = "boom";
	}

	private void anotherGreatMethodCastingObject() {
		Object o = new Object();

		if (o instanceof String) {

		}
		// here is some new code

	}

	/**
	 * @category gettersetter
	 * @return
	 */
	public String getSomeAttribute() {
		return someAttribute;
	}

	/**
	 * @category gettersetter
	 */
	public void setSomeAttribute(String someAttribute) {
		this.someAttribute = someAttribute;
	}
}
