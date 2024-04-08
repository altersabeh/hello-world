namespace Prog.Goodbye.World;

public class GoodbyeWorld
{
    /// <summary> <h1><c>PrintGoodbye</c></h1>
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
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>string</c> - The goodbye message.
    /// </item>
    /// </list>
    ///
    /// <b>Example:</b>
    ///
    /// <code>
    /// using Prog.Goodbye.World;
    /// Console.WriteLine(GoodbyeWorld.PrintGoodbye([]));
    /// Console.WriteLine(GoodbyeWorld.PrintGoodbye(["John", "Doe"]));</code>
    ///
    /// <b>Output:</b>
    ///
    /// <code>
    /// "Goodbye World from C# !"
    /// "Goodbye John Doe from C# !"</code>
    /// </summary>
    public static string PrintGoodbye(string[] args)
    {
        if (args.Length > 0)
        {
            string name = string.Join(" ", args);
            return $"Goodbye {name} from C# !";
        }
        else
        {
            return "Goodbye World from C# !";
        }
    }

    /// <summary> <h1><c>PrintBanner</c></h1>
    /// <br/><br/>This method prints the goodbye banner.<br/><br/>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>string</c> - The goodbye banner.
    /// </item>
    /// </list>
    /// </summary>
    public static string PrintBanner()
    {
        return @"
        ███▄    █▓████▄▄▄█████▓
        ██ ▀█   █▓█   ▓  ██▒ ▓▒
       ▓██  ▀█ ██▒███ ▒ ▓██░ ▒░
       ▓██▒  ▐▌██▒▓█  ░ ▓██▓ ░
   ██▓ ▒██░   ▓██░▒████▒▒██▒ ░
   ▒▓▒ ░ ▒░   ▒ ▒░░ ▒░ ░▒ ░░
   ░▒  ░ ░░   ░ ▒░░ ░  ░  ░
   ░      ░   ░ ░   ░   ░
    ░           ░   ░  ░
    ░
".Replace("\r\n", "\n");
    }
}
