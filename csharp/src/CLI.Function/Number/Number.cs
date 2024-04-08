using Mathematics = Prog.Numbers.Utils.Operations;

namespace Prog.CLI.Function;

public class Number
{
    /// <summary> <h1><c>GetUserNumber</c></h1>
    /// <br/><br/>This method gets a number from the user.<br/><br/>
    /// </summary>
    public static int GetUserNumber()
    {
        Console.Write("Enter a number : ");
        string numberStr = Console.ReadLine()?.Trim() ?? string.Empty;
        return int.TryParse(numberStr, out int number) ? number : 0;
    }

    /// <summary> <h1><c>PrintNumberCalculations</c></h1>
    /// <br/><br/>This method prints the Fibonacci and Factorial of a number
    /// using the FibonacciUtils and FactorialUtils classes from the
    /// Numbers.Utils module.<br/><br/>
    /// </summary>
    public static void PrintNumberCalculations()
    {
        int number = GetUserNumber();
        Console.WriteLine($"Fib[{number}] = {Mathematics.FibonacciUtils.Fibonacci(number)}");
        Console.WriteLine($"Fact[{number}] = {Mathematics.FactorialUtils.Factorial(number)}");
    }
}
