namespace Hello.World;

public class HelloWorldTests
{
    [Fact]
    public void PrintGreetingWithoutNameTest()
    {
        string[] args = [];
        string expectedOutput = "Hello World from Dotnet !";
        string actualOutput = HelloWorld.PrintGreeting(args);
        Assert.Equal(actualOutput, expectedOutput);
    }

    [Fact]
    public void PrintGreetingWithNameTest()
    {
        string[] args = ["Alter", "Sabeh"];
        string expectedOutput = "Hi Alter Sabeh, greetings from Dotnet !";
        string actualOutput = HelloWorld.PrintGreeting(args);
        Assert.Equal(actualOutput, expectedOutput);
    }

    [Fact]
    public void PrintDateTest()
    {
        DateTime now = DateTime.Now;
        string formattedDate = now.ToString("MMMM d, yyyy HH:mm");
        string expectedOutput = $"Today is {formattedDate}";
        string actualOutput = HelloWorld.PrintDate();
        Assert.Equal(actualOutput, expectedOutput);
    }
}