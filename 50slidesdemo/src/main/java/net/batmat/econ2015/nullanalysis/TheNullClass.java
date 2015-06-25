package net.batmat.econ2015.nullanalysis;

public class TheNullClass {

	public static void main(String[] args) {
		new TheNullClass().theMaybeABitTooKissMethod(null);

	}

	public void theMaybeABitTooKissMethod(String someParameter) {
		if (someParameter == null) {
			System.out.println("Urgh");
		}

		System.out.println("Now, that's better!");
	}
}
