package net.batmat.econ2015.filtering;

public class StepFiltering {

	private static class SimpleClass {
		private String anAttribute;

		public SimpleClass(String anAttribute){
			this.anAttribute = anAttribute;
		}
		public String getAnAttribute() {
			return anAttribute;
		}

		public void setAnAttribute(String anAttribute) {
			this.anAttribute = anAttribute;
		}

		public void theMethodWorthSomething() {
			System.out.println(anAttribute);
		}
	}

	public static void main(String[] args) {
		SimpleClass simpleClass = new SimpleClass("yay! it's working");
		simpleClass.theMethodWorthSomething();
		System.out.println("Here");
	}

}
