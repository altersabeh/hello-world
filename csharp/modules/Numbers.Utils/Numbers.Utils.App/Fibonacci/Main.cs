using Prog.Numbers.Utils.Operations;

namespace Prog.Numbers.Utils.App;

public class Fibonacci
{
    public static int GetUserNumber()
    {
        Console.Write("Enter a number : ");
        string? numberStr = Console.ReadLine();
        return int.TryParse(numberStr, out int number) ? number : 0;
    }

    public static void PrintFactorial()
    {
        string[] args = Environment.GetCommandLineArgs();
        int number = args.Length > 1 ? int.Parse(args[1]) : GetUserNumber();
        Console.WriteLine($"Fact[{number}] = {FibonacciUtils.Fibonacci(number)}");
    }

    public static void Main(string[] args)
    {
        PrintFactorial();
    }
}
