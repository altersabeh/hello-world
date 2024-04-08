using Prog.Hello.World;
using Prog.Translation;

namespace Prog.CLI.Function;

public class Details
{
    /// <summary> <h1><c>GetUserName</c></h1>
    /// <br/><br/>This method gets the user name.<br/><br/>
    ///
    /// <b>Arguments:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>args: string[]</c> - The command line arguments passed to the program
    /// </item>
    /// </list>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>string</c> - The name of the user.
    /// </item>
    /// </list>
    ///
    /// <b>Example:</b>
    ///
    /// <code>
    /// using Prog.CLI.Function;
    /// name = Details.GetUserName(args);
    /// Console.WriteLine(name);</code>
    ///
    /// <b>Output:</b>
    ///
    /// <code>
    /// "Please enter your name : John"
    /// "John"</code>
    /// </summary>
    public static string GetUserName(string[] args)
    {
        if (args == null || args.Length == 0)
        {
            Console.Write("Please enter your name : ");
            return Console.ReadLine()?.Trim() ?? string.Empty;
        }
        else
        {
            return string.Join(" ", args);
        }
    }

    /// <summary> <h1><c>GetUserLanguage</c></h1>
    /// <br/><br/>This method gets the user language.<br/><br/>
    /// </summary>
    public static string GetUserLanguage()
    {
        Console.Write("Please enter your language : ");
        return Console.ReadLine()?.Trim() ?? string.Empty;
    }

    /// <summary> <h1><c>PrintUserDetails</c></h1>
    /// <br/><br/>This method prints the user details. It gets the user name and
    /// language and prints the translated message using the Translator
    /// module.<br/><br/>
    /// </summary>
    public static void PrintUserDetails(string[] args)
    {
        string name = GetUserName(args);
        string language = GetUserLanguage();
        Console.WriteLine(Translator.Translate(language, name));
        Console.WriteLine(HelloWorld.PrintDate());
    }
}
