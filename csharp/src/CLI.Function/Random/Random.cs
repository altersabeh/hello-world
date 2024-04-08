using Mathematics = Prog.Numbers.Utils.Operations;

namespace Prog.CLI.Function;

public class Random
{
    /// <summary> <h1><c>PrintRandomNumbers</c></h1>
    /// <br/><br/>This method prints some random numbers.<br/><br/>
    /// </summary>
    public static void PrintRandomNumbers()
    {
        Console.WriteLine("Some random numbers :");
        Console.WriteLine(Mathematics.FibonacciUtils.FibonacciRandom());
        Console.WriteLine(Mathematics.FactorialUtils.FactorialRandom());
    }
}
