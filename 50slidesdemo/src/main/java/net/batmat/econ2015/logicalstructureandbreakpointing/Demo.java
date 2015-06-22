package net.batmat.econ2015.logicalstructureandbreakpointing;

import java.util.Base64;

public class Demo {
	public static class MyGreatPhysicalStructure {
		public String encodedContent;

		public MyGreatPhysicalStructure(String content) {
			encodedContent = Base64.getEncoder().encodeToString(
					content.getBytes());
		}

		@Override
		public String toString() {
			return encodedContent;
		}
	}

	public static void main(String[] args) {

		conditionalBreakpointHack();

		// demoLogicalStructure();

	}

	private static void demoLogicalStructure() {
		MyGreatPhysicalStructure myGreatPhysicalStructure = new MyGreatPhysicalStructure(
				"here we are");

		System.out.println(myGreatPhysicalStructure.toString());
	}

	private static void conditionalBreakpointHack() {
		System.out.println("Some String".substring(0, 5));

	}
}
