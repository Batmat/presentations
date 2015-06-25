package net.batmat.econ2015.logicalstructure;

import java.util.Base64;

public class LogicalStructure {
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

		MyGreatPhysicalStructure myGreatPhysicalStructure = new MyGreatPhysicalStructure(
				"here we are");
		
		System.out.println(myGreatPhysicalStructure.toString());

	}
}
