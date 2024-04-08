using Prog.CLI.Function;

namespace Prog;

internal class App
{
    /// <summary> <h1><c>Main</c></h1>
    /// <br/><br/>This method is the entry point of the program.<br/><br/>
    ///
    /// <b>Arguments:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>args: string[]</c> - The command line arguments passed to the program
    /// </item>
    /// </list>
    /// </summary>
    static void Main(string[] args)
    {
        Console.WriteLine("==================================");
        Details.PrintUserDetails(args);
        Console.WriteLine("==================================");
    }
}
