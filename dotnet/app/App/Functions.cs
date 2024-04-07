using Banner = Prog.CLI.Function.Banner;
using Greeter = Prog.CLI.Function.Greeter;
using Details = Prog.CLI.Function.Details;
using Number = Prog.CLI.Function.Number;
using Random = Prog.CLI.Function.Random;

namespace Prog;

internal class Functions {
    private static void WaitForUser()
    {
        Console.Write("Press enter to continue ...");
        Console.ReadLine();
        Console.WriteLine("");
    }

    public static void StartProgram() {
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
