
import org.junit.Assert;
import org.junit.Test;

public class Test2 {

	@Test
	public void testPrintHelloWorld() {

		Assert.assertEquals(JUnitTest.getHelloWorld(), "Hello World");

	}

}