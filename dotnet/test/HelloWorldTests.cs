namespace Hello.World;

public class HelloWorldTests
{
    [Fact]
    public void PrintGreetingWithoutNameTest()
    {
        string[] args = new string[] { };
        string expectedOutput = "Hello World from Dotnet !";
        Assert.Equal(expectedOutput, HelloWorld.PrintGreeting(args));
    }

    [Fact]
    public void PrintGreetingWithNameTest()
    {
        string[] args = new string[] { "Alter", "Sabeh" };
        string expectedOutput = "Hi Alter Sabeh, greetings from Dotnet !";
        Assert.Equal(expectedOutput, HelloWorld.PrintGreeting(args));
    }

    [Fact]
    public void PrintDateTest()
    {
        DateTime now = DateTime.Now;
        string formattedDate = now.ToString("MMMM d, yyyy HH:mm");
        string expectedOutput = $"Today is {formattedDate}";
        Assert.Equal(expectedOutput, HelloWorld.PrintDate());
    }
}
