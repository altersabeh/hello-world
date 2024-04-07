using System.Numerics;
using Prog.Numbers.Utils.Operations;

namespace Prog.Numbers.Utils.App;

public class Factor
{
    private static BigInteger getUserNumber()
    {
        Console.Write("Enter a number : ");
        string? input = Console.ReadLine();
        return BigInteger.TryParse(input, out BigInteger number) ? number : BigInteger.Zero;
    }

    private static BigInteger GetNumber(string[] args)
    {
        if (args.Length > 0 && BigInteger.TryParse(args[0], out BigInteger number))
        {
            return number;
        }
        else
        {
            return getUserNumber();
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
