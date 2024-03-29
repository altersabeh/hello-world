namespace HelloWorld.Tests;

public class HelloWorldTests
{
    [Fact]
    public void TestHelloWorld()
    {
        string[] args = [];
        var consoleMock = new ConsoleMock();
        Console.SetOut(consoleMock.OutputWriter);

        Hello.World.HelloWorld.PrintGreeting(args);

        Assert.Equal("Hello World from Dotnet !\n", consoleMock.Output);
    }

    [Fact]
    public void TestHelloWorldWithName()
    {
        string[] args = ["Alter", "Sabeh"];
        var consoleMock = new ConsoleMock();
        Console.SetOut(consoleMock.OutputWriter);

        Hello.World.HelloWorld.PrintGreeting(args);

        Assert.Equal("Hi Alter Sabeh, greetings from Dotnet !\n", consoleMock.Output);
    }

    [Fact]
    public void TestCurrentDate()
    {
        var consoleMock = new ConsoleMock();
        Console.SetOut(consoleMock.OutputWriter);
        string expectedOutput = $"Today is {DateTime.Now.ToString("MMMM d, yyyy HH:mm")}\n";

        Hello.World.HelloWorld.PrintDate();

        Assert.Equal(expectedOutput, consoleMock.Output);
    }

    private class ConsoleMock : IDisposable
    {
        public StringWriter OutputWriter { get; } = new StringWriter();
        public string Output => OutputWriter.ToString();

        public void Dispose()
        {
            Console.SetOut(Console.Out);
        }
    }
}
