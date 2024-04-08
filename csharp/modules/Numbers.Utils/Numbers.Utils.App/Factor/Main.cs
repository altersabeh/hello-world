using System.Numerics;
using Prog.Numbers.Utils.Operations;

namespace Prog.Numbers.Utils.App;

public class Factor
{
    /// <summary> <h1><c>GetUserNumber</c></h1>
    /// <br/><br/>This method is used to get a number from the user.<br/><br/>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bulle">
    /// <item>
    /// <c>BigInteger</c> - The number entered by the user.
    /// </item>
    /// </list>
    ///
    /// <b>Example:</b>
    ///
    /// <code>
    /// using Prog.Numbers.Utils.App;
    /// number = Factor.GetUserNumber();
    /// Console.WriteLine(number);</code>
    ///
    /// <b>Output:</b>
    ///
    /// <code>
    /// "Enter a number : 10"
    /// "Number : 10"</code>
    /// </summary>
    private static BigInteger GetUserNumber()
    {
        Console.Write("Enter a number : ");
        string? input = Console.ReadLine();
        return BigInteger.TryParse(input, out BigInteger number) ? number : BigInteger.Zero;
    }

    /// <summary> <h1><c>GetNumber</c></h1>
    /// <br/><br/>This method is used to get a number from the user or from the
    /// command line arguments.<br/><br/>
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
    /// <c>BigInteger</c> - The number entered by the user or from the command.
    /// </item>
    /// </list>
    /// </summary>
    private static BigInteger GetNumber(string[] args)
    {
        if (args.Length > 0 && BigInteger.TryParse(args[0], out BigInteger number))
        {
            return number;
        }
        else
        {
            return GetUserNumber();
        }
    }

    private static void PrintFactor(BigInteger number)
    {
        var factors = FactorUtils.Factor(number);
        Console.WriteLine($"Factor[{number}] = [{string.Join(", ", factors)}]");
    }

    private static void PrintPrimeFactor(BigInteger number)
    {
        var primeFactors = FactorUtils.PrimeFactor(number);
        Console.WriteLine($"PFactor[{number}] = [{string.Join(", ", primeFactors)}]");
    }

    public static void Main(string[] args)
    {
        BigInteger number = GetNumber(args);
        PrintFactor(number);
        PrintPrimeFactor(number);
    }
}
