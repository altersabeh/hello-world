namespace Prog.Hello.World.Tests;

[TestFixture]
public class HelloWorldTests
{
    private static string FormatErrorMessage(string expected, string actual)
    {
        return $"\nTest run at: {DateTime.Now:O}\nExpected : {expected}\nActual   : {actual}\n";
    }

    [Test]
    public void PrintGreetingWithoutNameTest()
    {
        string[] args = [];
        string expectedOutput = "Hello World from .NET !";
        string actualOutput = HelloWorld.PrintGreeting(args);
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }

    [Test]
    public void PrintGreetingWithNameTest()
    {
        string[] args = ["Alter", "Sabeh"];
        string expectedOutput = "Hello Alter Sabeh from .NET !";
        string actualOutput = HelloWorld.PrintGreeting(args);
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }

    [Test]
    public void PrintDateTest()
    {
        DateTime now = DateTime.Now;
        string formattedDate = now.ToString("MMMM dd, yyyy 'at' hh:mm tt");
        string expectedOutput = $"Today is {formattedDate}";
        string actualOutput = HelloWorld.PrintDate();
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }

    [Test]
    public void PrintGreettTest()
    {
        string expectedOutput = "Hello, .NET's Here !";
        string actualOutput = HelloWorld.GREETING;
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }
}
