package net.batmat.econ2015.category;


public class CategoryDemo {

	private String someAttribute;

	/**
	 * @category complex
	 */
	private void aComplexOne() {

	}

	private void someOtherMethod(String string) {

	}

	/**
	 * @category trivial getter
	 * @return
	 */
	public String getSomeAttribute() {
		return someAttribute;
	}

	/**
	 * @category trivial setter
	 */
	public void setSomeAttribute(String someAttribute) {
		this.someAttribute = someAttribute;
	}
}
