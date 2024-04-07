namespace Prog.Hello.World;

public class HelloWorld
{
    /// <summary> A constant string that contains a greeting message.
    /// <br></br>
    /// <br><b>Example:</b></br>
    /// <code>
    /// using Hello.World;
    ///
    /// Console.WriteLine(HelloWorld.GREETING) // Hello, .NET's Here !</code>
    /// <b>Output:</b>
    /// <code>
    /// "Hello, .Net's Here" </code>
    /// </summary>
    public const string GREETING = "Hello, .NET's Here !";

    /// <summary> This function prints a greeting.  It takes a list of strings
    /// as an argument. If the list is empty, it prints a default
    /// greeting.Otherwise, it prints a personalized greeting using the strings
    /// in the list.
    /// <br></br> <br><b>Signature:</b></br>
    /// <code>
    /// public static string PrintGreeting(string[] args) </code>
    /// <br><b>Example:</b></br>
    /// <code>
    /// using Hello.World;
    ///
    /// public class Program
    /// {
    ///     public static void Main(string[] args)
    ///     {
    ///         Console.WriteLine(PrintGreeting(args));
    ///         Console.WriteLine(PrintGreeting(["John", "Doe"]));
    ///     }
    /// } </code>
    /// <b>Output:</b>
    /// <code>
    /// "Hello World from .NET !"
    /// "Hi John Doe, greetings from .NET !" </code>
    /// </summary>
    public static string PrintGreeting(string[] args)
    {
        if (args.Length > 0)
        {
            string name = string.Join(" ", args);
            return $"Hello {name} from .NET !";
        }
        else
        {
            return "Hello World from .NET !";
        }
    }

    public static string PrintDate()
    {
        DateTime currentDate = DateTime.Now;
        string layout = "MMMM dd, yyyy 'at' hh:mm tt";
        string formattedDate = currentDate.ToString(layout);
        return $"Today is {formattedDate}";
    }
}
