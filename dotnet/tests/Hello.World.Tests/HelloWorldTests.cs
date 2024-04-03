namespace Hello.World.Tests;

public class HelloWorldTests
{
    [Fact]
    public void PrintGreetingWithoutNameTest()
    {
        string[] args = [];
        string expectedOutput = "Hello World from .NET !";
        string actualOutput = HelloWorld.PrintGreeting(args);
        Assert.Equal(expectedOutput, actualOutput);
    }

    [Fact]
    public void PrintGreetingWithNameTest()
    {
        string[] args = ["Alter", "Sabeh"];
        string expectedOutput = "Hi Alter Sabeh, greetings from .NET !";
        string actualOutput = HelloWorld.PrintGreeting(args);
        Assert.Equal(expectedOutput, actualOutput);
    }

    [Fact]
    public void PrintDateTest()
    {
        DateTime now = DateTime.Now;
        string formattedDate = now.ToString("MMMM d, yyyy 'at' hh:mm tt");
        string expectedOutput = $"Today is {formattedDate}";
        string actualOutput = HelloWorld.PrintDate();
        Assert.Equal(expectedOutput, actualOutput);
    }
}
