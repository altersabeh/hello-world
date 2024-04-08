using System.Numerics;

namespace Prog.Numbers.Utils.Operations;

public class FactorUtils
{
    /// <summary> <h1><c>Factor</c></h1>
    /// <br/><br/>This method is used to find the factors of a number.<br/><br/>
    ///
    /// <b>Arguments:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>num: BigInteger</c> - The number for which the factors are to be
    /// found.
    /// </item>
    /// </list>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>List&lt;BigInteger&gt;</c> - The list of factors of the number.
    /// </item>
    /// </list>
    ///
    /// <b>Example:</b>
    ///
    /// <code>
    /// using Prog.Numbers.Utils.Operations;
    /// factors = FactorUtils.Factor(10);
    /// Console.WriteLine(string.Join(", ",factors));</code>
    ///
    /// <b>Output:</b>
    ///
    /// <code>
    /// "1, 2, 5, 10"</code>
    /// </summary>
    public static List<BigInteger> Factor(BigInteger num)
    {
        var factors = new List<BigInteger>();
        var max = (int)num;

        for (int i = 1; i <= max; i++)
        {
            var divisor = new BigInteger(i);
            if (num % divisor == BigInteger.Zero)
            {
                factors.Add(divisor);
            }
        }

        return factors;
    }

    /// <summary> <h1><c>FactorRandom</c></h1>
    /// <br/><br/>This method is used to find the factors of a random
    /// number.<br/><br/>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>string</c> - The factors of the random number.
    /// </item>
    /// </list>
    ///
    /// <b>Example:</b>
    ///
    /// <code>
    /// using Prog.Numbers.Utils.Operations;
    /// factors = FactorUtils.FactorRandom();
    /// Console.WriteLine(factors);</code>
    ///
    /// <b>Output:</b>
    ///
    /// <code>
    /// "Factor[10] = [1, 2, 5, 10]"</code>
    /// </summary>
    public static string FactorRandom()
    {
        var rng = new Random();
        var randomNum = rng.Next(1, 26);

        var factors = Factor(new BigInteger(randomNum));

        return $"Factor[{randomNum}] = [{string.Join(", ", factors)}]";
    }

    /// <summary> <h1><c>PrimeFactor</c></h1>
    /// <br/><br/>This method is used to find the prime factors of a
    /// number.<br/><br/>
    ///
    /// <b>Arguments:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>num: BigInteger</c> - The number for which the factors are to be
    /// found.
    /// </item>
    /// </list>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>List&lt;BigInteger&gt;</c> - The list of factors of the number.
    /// </item>
    /// </list>
    ///
    /// <b>Example:</b>
    ///
    /// <code>
    /// using Prog.Numbers.Utils.Operations;
    /// primeFactors = FactorUtils.PrimeFactor(10);
    /// Console.WriteLine(string.Join(", ",primeFactors));</code>
    ///
    /// <b>Output:</b>
    ///
    /// <code>
    /// "1, 2, 5, 10"</code>
    /// </summary>
    public static List<BigInteger> PrimeFactor(BigInteger num)
    {
        var primeFactors = new List<BigInteger>();
        BigInteger divisor = 2;

        while (divisor * divisor <= num)
        {
            if (num % divisor == BigInteger.Zero)
            {
                primeFactors.Add(divisor);
                num /= divisor;
            }
            else
            {
                divisor = divisor == 2 ? 3 : divisor + 2;
            }
        }

        if (num > BigInteger.One)
        {
            primeFactors.Add(num);
        }

        return primeFactors;
    }

    /// <summary> <h1><c>PrimeFactorRandom</c></h1>
    /// <br/><br/>This method is used to find the prime factors of a random
    /// number.<br/><br/>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>string</c> - The prime factors of the random number.
    /// </item>
    /// </list>
    ///
    /// <b>Example:</b>
    /// <code>
    /// using Prog.Numbers.Utils.Operations;
    /// primeFactors = FactorUtils.PrimeFactorRandom();
    /// Console.WriteLine(primeFactors);</code>
    ///
    /// <b>Output:</b>
    /// <code>
    /// "PFactor[10] = [1, 2, 5, 10]"</code>
    /// </summary>
    public static string PrimeFactorRandom()
    {
        var rng = new Random();
        var randomNum = rng.Next(1, 26);

        var primeFactors = PrimeFactor(new BigInteger(randomNum));

        return $"PFactor[{randomNum}] = [{string.Join(", ", primeFactors)}]";
    }
}
