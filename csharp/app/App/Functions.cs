using Banner = Prog.CLI.Function.Banner;
using Details = Prog.CLI.Function.Details;
using Greeter = Prog.CLI.Function.Greeter;
using Number = Prog.CLI.Function.Number;
using Random = Prog.CLI.Function.Random;

namespace Prog;

internal class Functions
{
    /// <summary> <h1><c>WaitForUser</c></h1>
    /// <br/><br/>This method waits for the user to press the Enter key before
    /// continuing.<br/><br/>
    ///
    /// <b>Example:</b>
    ///
    /// <code>
    /// using Prog;
    /// Functions.WaitForUser();</code>
    ///
    /// <b>Output:</b>
    ///
    /// <code>
    /// "Press enter to continue ..."</code>
    /// </summary>
    private static void WaitForUser()
    {
        Console.Write("Press enter to continue ...");
        Console.ReadLine();
        Console.WriteLine("");
    }

    /// <summary> <h1><c>StartProgram</c></h1>
    /// <br/><br/>This method is the
    /// entry point of the program. It calls the methods to print the welcome
    /// message, user details, number calculations, random numbers, goodbye
    /// message, and banner message.<br/><br/>
    /// </summary>
    public static void StartProgram()
    {
        string[] args = Environment.GetCommandLineArgs().Skip(1).ToArray();
        Console.WriteLine("==================================");
        Console.WriteLine("");
        Greeter.PrintWelcomeMessage(args);
        Details.PrintUserDetails(args);
        Console.WriteLine("");
        Number.PrintNumberCalculations();
        Console.WriteLine("");
        Random.PrintRandomNumbers();
        Console.WriteLine("");
        WaitForUser();
        Greeter.PrintGoodbyeMessage(args);
        Banner.PrintBannerMessage();
        Console.WriteLine("==================================");
    }
}
