using Prog.Goodbye.World;
using Prog.Hello.World;

namespace Prog.CLI.Function;

public class Greeter
{
    public static void PrintWelcomeMessage(string[] args)
    {
        Console.WriteLine(HelloWorld.PrintGreeting(args));
    }

    public static void PrintGoodbyeMessage(string[] args)
    {
        Console.Error.WriteLine(GoodbyeWorld.PrintGoodbye(args));
    }
}
