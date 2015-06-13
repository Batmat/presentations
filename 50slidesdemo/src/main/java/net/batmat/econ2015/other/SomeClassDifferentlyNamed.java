package net.batmat.econ2015.other;


public class SomeClassDifferentlyNamed {
    public static String[] hop = new String[] { "a", "b", "c" };

    private String someAttribute;

    public static void main(String[] args) {

	int i = 1;
	String s = (hop != null) ? s = hop[0] : "somevalue";

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
