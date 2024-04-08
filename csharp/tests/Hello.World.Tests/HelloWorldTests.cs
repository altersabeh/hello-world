namespace Prog.Hello.World.Tests;

[TestFixture]
public class HelloWorldTests
{
    /// <summary> <h1><c>FormatErrorMessage</c></h1>
    /// <br/><br/>This method is used to format the error message.<br/><br/>
    ///
    /// <b>Arguments:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>expected: string</c> - The expected list of factors.
    /// </item>
    /// <item>
    /// <c>actual: string</c> - The actual list of factors.
    /// </item>
    /// </list>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>string</c> - The formatted error message.
    /// </item>
    /// </list>
    /// </summary>
    private static string FormatErrorMessage(string expected, string actual)
    {
        return $"\nTest run at: {DateTime.Now:O}\nExpected : {expected}\nActual   : {actual}\n";
    }

    /// <summary> <h1><c>PrintGreetingWithoutNameTest</c></h1>
    /// <br/><br/>This method is used to test the <c>PrintGreeting</c> method of
    /// <c>HelloWorld</c> without arguments.<br/><br/>
    /// </summary>
    [Test]
    public void PrintGreetingWithoutNameTest()
    {
        string[] args = [];
        string expectedOutput = "Hello World from C# !";
        string actualOutput = HelloWorld.PrintGreeting(args);
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }

    /// <summary> <h1><c>PrintGreetingWithNameTest</c></h1>
    /// <br/><br/>This method is used to test the <c>PrintGreeting</c> method of
    /// <c>HelloWorld</c> with arguments.<br/><br/>
    /// </summary>
    [Test]
    public void PrintGreetingWithNameTest()
    {
        string[] args = ["Alter", "Sabeh"];
        string expectedOutput = "Hello Alter Sabeh from C# !";
        string actualOutput = HelloWorld.PrintGreeting(args);
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }

    /// <summary> <h1><c>PrintDateTest</c></h1>
    /// <br/><br/>This method is used to test the <c>PrintDate</c> method of
    /// <c>HelloWorld</c>.<br/><br/>
    /// </summary>
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

    /// <summary> <h1><c>PrintGreettTest</c></h1>
    /// <br/><br/>This method is used to test the <c>GREETING</c> constant of
    /// <c>HelloWorld</c>.<br/><br/>
    /// </summary>
    [Test]
    public void PrintGreettTest()
    {
        string expectedOutput = "Hello, C#'s Here !";
        string actualOutput = HelloWorld.GREETING;
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }
}
