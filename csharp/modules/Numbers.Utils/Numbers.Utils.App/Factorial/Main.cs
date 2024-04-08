using Prog.Numbers.Utils.Operations;

namespace Prog.Numbers.Utils.App;

public class Factorial
{
    /// <summary> <h1><c>GetUserNumber</c></h1>
    /// <br/><br/>This method is used to get a number from the user.<br/><br/>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bulle">
    /// <item>
    /// <c>int</c> - The number entered by the user.
    /// </item>
    /// </list>
    ///
    /// <b>Example:</b>
    ///
    /// <code>
    /// using Prog.Numbers.Utils.App;
    /// number = Factorial.GetUserNumber();
    /// Console.WriteLine(number);</code>
    ///
    /// <b>Output:</b>
    ///
    /// <code>
    /// "Enter a number : 10"
    /// "Number : 10"</code>
    /// </summary>
    private static int GetUserNumber()
    {
        Console.Write("Enter a number : ");
        string? numberStr = Console.ReadLine();
        return int.TryParse(numberStr, out int number) ? number : 0;
    }

    /// <summary> <h1><c>PrintFactorial</c></h1>
    /// <br/><br/>This method is used to print the factorial of a
    /// number.<br/><br/>
    ///
    /// <b>Example:</b>
    /// <code>
    /// using Prog.Numbers.Utils.App;
    /// Factorial.PrintFactorial();</code>
    /// </summary>
    private static void PrintFactorial()
    {
        string[] args = Environment.GetCommandLineArgs();
        int number = args.Length > 1 ? int.Parse(args[1]) : GetUserNumber();
        Console.WriteLine($"Fact[{number}] = {FactorialUtils.Factorial(number)}");
    }

    /// <summary> <h1><c>Main</c></h1>
    /// <br/><br/>This is the main method of the application.<br/><br/>
    /// </summary>
    public static void Main(string[] args)
    {
        PrintFactorial();
    }
}
