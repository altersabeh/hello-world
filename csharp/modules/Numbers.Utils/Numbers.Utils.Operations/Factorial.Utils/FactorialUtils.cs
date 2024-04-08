using System.Numerics;

namespace Prog.Numbers.Utils.Operations;

public class FactorialUtils
{
    /// <summary> <h1><c>Factorial</c></h1>
    /// <br/><br/>This method is used to find the factorial of a
    /// number.<br/><br/>
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
    /// fact = FactorialUtils.Factorial(10);
    /// Console.WriteLine(fact);</code>
    ///
    /// <b>Output:</b>
    /// <code>
    /// "3628800"</code>
    /// </summary>
    public static BigInteger Factorial(int num)
    {
        BigInteger fact = 1;

        for (int i = 1; i <= num; i++)
        {
            fact *= i;
        }

        return fact;
    }

    /// <summary> <h1><c>FactorialRandom</c></h1>
    /// <br/><br/>This method is used to find the factorial of a random
    /// number.<br/><br/>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>string</c> - The factorial of the random number.
    /// </item>
    /// </list>
    ///
    /// <b>Example:</b>
    ///
    /// <code>
    /// using Prog.Numbers.Utils.Operations;
    /// fact = FactorialUtils.FactorialRandom();
    /// Console.WriteLine(fact);</code>
    /// </summary>
    public static string FactorialRandom()
    {
        Random rng = new();
        int randomNum = rng.Next(1, 26);

        BigInteger fact = Factorial(randomNum);

        return $"Fact[{randomNum}] = {fact}";
    }
}
