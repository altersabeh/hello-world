using Prog.CLI.Function;

internal class App
{
    static void Main(string[] args)
    {
        Console.WriteLine("==================================");
        Greeter.PrintWelcomeMessage(args);
        Greeter.PrintGoodbyeMessage(args);
        Console.WriteLine("==================================");
    }
}
