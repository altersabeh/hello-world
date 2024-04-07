using Mathematics = Prog.Numbers.Utils.Operations;

namespace Prog.CLI.Function;

public class Number
{
    public static int GetUserNumber()
    {
        Console.Write("Enter a number : ");
        string numberStr = Console.ReadLine()?.Trim() ?? string.Empty;
        return int.TryParse(numberStr, out int number) ? number : 0;
    }

    public static void PrintNumberCalculations()
    {
        int number = GetUserNumber();
        Console.WriteLine($"Fib[{number}] = {Mathematics.FibonacciUtils.Fibonacci(number)}");
        Console.WriteLine($"Fact[{number}] = {Mathematics.FactorialUtils.Factorial(number)}");
    }
}
