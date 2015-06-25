package net.batmat.econ2015.autocast;

import java.util.Arrays;
import java.util.List;

public class AutoCast {
	public static List<String> hop = Arrays.asList("a", "b", "c");

	public static void main(String[] args) {

		new AutoCast().anotherGreatMethodCastingObject();
	}

	private void anotherGreatMethodCastingObject() {
		Object o = new Object();

		if (o instanceof String) {

		}
		// here is some new code

	}
}
