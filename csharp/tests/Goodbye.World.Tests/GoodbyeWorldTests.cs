namespace Prog.Goodbye.World.Tests;

[TestFixture]
public class GoodbyeWorldTests
{
    private static string FormatErrorMessage(string expected, string actual)
    {
        return $"\nTest run at: {DateTime.Now:O}\nExpected : {expected}\nActual   : {actual}\n";
    }

    [Test]
    public void PrintGoodbyeWithoutNameTest()
    {
        string[] args = [];
        string expectedOutput = "Goodbye World from C# !";
        string actualOutput = GoodbyeWorld.PrintGoodbye(args);
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }

    [Test]
    public void PrintGoodbyeWithNameTest()
    {
        string[] args = ["Alter", "Sabeh"];
        string expectedOutput = "Goodbye Alter Sabeh from C# !";
        string actualOutput = GoodbyeWorld.PrintGoodbye(args);
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }

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
