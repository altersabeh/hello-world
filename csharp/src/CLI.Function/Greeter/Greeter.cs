using Prog.Goodbye.World;
using Prog.Hello.World;

namespace Prog.CLI.Function;

public class Greeter
{
    /// <summary> <h1><c>PrintWelcomeMessage</c></h1>
    /// <br/><br/>This method prints the welcome message.<br/><br/>
    ///
    /// <b>Arguments:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>args: string[]</c> - The command line arguments passed to the
    /// program.
    /// </item>
    /// </list>
    /// </summary>
    public static void PrintWelcomeMessage(string[] args)
    {
        Console.WriteLine(HelloWorld.PrintGreeting(args));
    }

    /// <summary> <h1><c>PrintGoodbyeMessage</c></h1>
    /// <br/><br/>This method prints the goodbye message.<br/><br/>
    ///
    /// <b>Arguments:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>args: string[]</c> - The command line arguments passed to the
    /// program.
    /// </item>
    /// </list>
    /// </summary>
    public static void PrintGoodbyeMessage(string[] args)
    {
        Console.Error.WriteLine(GoodbyeWorld.PrintGoodbye(args));
    }
}
