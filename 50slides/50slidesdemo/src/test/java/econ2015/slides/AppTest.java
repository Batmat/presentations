package econ2015.slides;

import org.junit.Test;

/**
 * Unit test for simple App.
 */
public class AppTest
{
	/**
	 * @link SimpleDateFormat
	 * 
	 */
	@Test
	public void testApp()
	{
		StringBuilder builder = new StringBuilder("hophop");
		System.out.println(builder.charAt(0));
		builder.hashCode();
		System.out.println(builder.toString());
	}
}
