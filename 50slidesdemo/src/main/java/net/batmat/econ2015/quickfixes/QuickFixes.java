package net.batmat.econ2015.quickfixes;

import java.util.Arrays;
import java.util.List;

public class QuickFixes {
	public static List<String> hop = Arrays.asList("a", "b", "c");

	private String someAttribute;

	public static void ternaryAndInvert(String[] args) {
		String s = (hop != null) ? hop.get(0) : "somevalue";

	}

	private void unused() {
		int i = 1;

		String a = "boom";

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
