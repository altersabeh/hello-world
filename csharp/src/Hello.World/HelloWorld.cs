namespace Prog.Hello.World;

public class HelloWorld
{


    /// <summary> <h1><c>GREETING</c></h1>
    /// <br/><br/>This constant contains the greeting message.<br/><br/>
    ///
    /// <b>Returns:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>string</c> - The greeting message.
    /// </item>
    /// </list>
    ///
    /// <b>Example:</b>
    ///
    /// <code>
    /// using Hello.World;
    /// Console.WriteLine(HelloWorld.GREETING) // Hello, C#'s Here !;</code>
    ///
    /// <b>Output:</b>
    ///
    /// <code>
    /// "Hello, C#'s Here !"</code>
    /// </summary>
    public const string GREETING = "Hello, C#'s Here !";

    /// <summary> <h1><c>PrintGreeting</c></h1>
    /// <br/><br/>This method prints the greeting message.<br/><br/>
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
    /// <c>string</c> - The greeting message.
    /// </item>
    /// </list>
    ///
    /// <b>Example:</b>
    ///
    /// <code>
    /// using Hello.World;
    /// Console.WriteLine(HelloWorld.PrintGreeting([]));
    /// Console.WriteLine(HelloWorld.PrintGreeting(["John", "Doe"]));</code>
    ///
    /// <b>Output:</b>
    ///
    /// <code>
    /// "Hello World from C# !"
    /// "Hello John Doe from C# !"</code>
    /// </summary>
    public static string PrintGreeting(string[] args)
    {
        if (args.Length > 0)
        {
            string name = string.Join(" ", args);
            return $"Hello {name} from C# !";
        }
        else
        {
            return "Hello World from C# !";
        }
    }

    /// <summary> <h1><c>PrintDate</c></h1>
    /// <br/><br/>This method prints the current date.<br/><br/>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>string</c> - The current date.
    /// </item>
    /// </list>
    ///
    /// <b>Example:</b>
    ///
    /// <code>
    /// using Hello.World;
    /// Console.WriteLine(HelloWorld.PrintDate());</code>
    ///
    /// <b>Output:</b>
    ///
    /// <code>
    /// "Today is January 16, 2002 at 10:44 AM"</code>
    /// </summary>
    public static string PrintDate()
    {
        DateTime currentDate = DateTime.Now;
        string layout = "MMMM dd, yyyy 'at' hh:mm tt";
        string formattedDate = currentDate.ToString(layout);
        return $"Today is {formattedDate}";
    }
}
