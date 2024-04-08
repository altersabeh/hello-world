using System.Numerics;

namespace Prog.Numbers.Utils.Operations;

public class FibonacciUtils
{
    /// <summary> <h1><c>Fibonacci</c></h1>
    /// <br/><br/>This method is used to find the nth fibonacci term.<br/><br/>
    ///
    /// <b>Arguments:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>num: int</c> - The number for which the factorial is to be found.
    /// </item>
    /// </list>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>BigInteger</c> - The factorial of the number.
    /// </item>
    /// </list>
    ///
    /// <b>Example:</b>
    /// <code>
    /// using Prog.Numbers.Utils.Operations;
    /// fact = FibonacciUtils.Fibonacci(10);
    /// Console.WriteLine(fact);</code>
    ///
    /// <b>Output:</b>
    /// <code>
    /// "3628800"</code>
    /// </summary>
    public static BigInteger Fibonacci(int num)
    {
        BigInteger firstTerm = 0;
        BigInteger secondTerm = 1;

        for (int i = 0; i < num; i++)
        {
            BigInteger temp = firstTerm;
            firstTerm = secondTerm;
            secondTerm += temp;
        }

        return firstTerm;
    }

    /// <summary> <h1><c>FibonacciRandom</c></h1>
    /// <br/><br/>This method is used to find the fibonacci of a random
    /// number.<br/><br/>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>string</c> - The fibonacci of the random number.
    /// </item>
    /// </list>
    ///
    /// <b>Example:</b>
    ///
    /// <code>
    /// using Prog.Numbers.Utils.Operations;
    /// fact = FibonacciUtils.FibonacciRandom();
    /// Console.WriteLine(fact);</code>
    /// </summary>
    public static string FibonacciRandom()
    {
        Random rng = new();
        int randomNum = rng.Next(1, 51);

        BigInteger fib = Fibonacci(randomNum);

        return $"Fib[{randomNum}] = {fib}";
    }
}
