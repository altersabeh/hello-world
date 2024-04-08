namespace Prog.Goodbye.World.Tests;

[TestFixture]
public class GoodbyeWorldTests
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

    /// <summary> <h1><c>PrintGoodbyeWithoutNameTest</c></h1>
    /// <br/><br/>This method is used to test the PrintGoodbye method of
    /// GoodbyeWorld without arguments.<br/><br/>
    /// </summary>
    [Test]
    public void PrintGoodbyeWithoutNameTest()
    {
        string[] args = [];
        string expectedOutput = "Goodbye World from C# !";
        string actualOutput = GoodbyeWorld.PrintGoodbye(args);
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }

    /// <summary> <h1><c>PrintGoodbyeWithNameTest</c></h1>
    /// <br/><br/>This method is used to test the PrintGoodbye method of
    /// GoodbyeWorld with arguments.<br/><br/>
    /// </summary>
    [Test]
    public void PrintGoodbyeWithNameTest()
    {
        string[] args = ["Alter", "Sabeh"];
        string expectedOutput = "Goodbye Alter Sabeh from C# !";
        string actualOutput = GoodbyeWorld.PrintGoodbye(args);
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }

    /// <summary> <h1><c>PrintBannerTest</c></h1>
    /// <br/><br/>This method is used to test the PrintBanner method of
    /// GoodbyeWorld.<br/><br/>
    [Test]
    public void PrintBannerTest()
    {
        string expectedOutput = @"
        ███▄    █▓████▄▄▄█████▓
        ██ ▀█   █▓█   ▓  ██▒ ▓▒
       ▓██  ▀█ ██▒███ ▒ ▓██░ ▒░
       ▓██▒  ▐▌██▒▓█  ░ ▓██▓ ░
   ██▓ ▒██░   ▓██░▒████▒▒██▒ ░
   ▒▓▒ ░ ▒░   ▒ ▒░░ ▒░ ░▒ ░░
   ░▒  ░ ░░   ░ ▒░░ ░  ░  ░
   ░      ░   ░ ░   ░   ░
    ░           ░   ░  ░
    ░
";
        string actualOutput = GoodbyeWorld.PrintBanner();
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(actualOutput, Is.EqualTo(expectedOutput), errorMessage);
    }
}
