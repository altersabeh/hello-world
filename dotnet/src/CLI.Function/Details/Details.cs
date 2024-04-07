using Prog.Hello.World;
using Prog.Translation;

namespace Prog.CLI.Function;

public class Details
{
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

    public static string GetUserLanguage()
    {
        Console.Write("Please enter your language : ");
        return Console.ReadLine()?.Trim() ?? string.Empty;
    }

    public static void PrintUserDetails(string[] args)
    {
        string name = GetUserName(args);
        string language = GetUserLanguage();
        Console.WriteLine(Translator.Translate(language, name));
        Console.WriteLine(HelloWorld.PrintDate());
    }
}
