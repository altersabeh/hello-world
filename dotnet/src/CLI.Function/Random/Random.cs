using Mathematics = Prog.Numbers.Utils.Operations;

namespace Prog.CLI.Function;

public class Random
{
    public static void PrintRandomNumbers()
    {
        Console.WriteLine("Some random numbers :");
        Console.WriteLine(Mathematics.FibonacciUtils.FibonacciRandom());
        Console.WriteLine(Mathematics.FactorialUtils.FactorialRandom());
    }
}
