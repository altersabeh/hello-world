using System.Numerics;

namespace Prog.Numbers.Utils.Operations;

public class FactorUtils
{
    /// <summary> Calculates the factors of a given number.
    /// <br></br>
    /// <br><b>Example:</b></br>
    /// <code>
    /// using Numbers.Utils.Operations;
    ///
    /// var factors = FactorUtils.Factor(60)
    /// Console.WriteLine($"[{string.Join(", ", factors)}]");</code>
    /// <br></br>
    /// <br><b>Output:</b></br>
    /// <code>
    /// [1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 30, 60]</code>
    /// </summary>
    /// <param name="n">The number to factorize. The number to factorize. This
    /// should be of type <see cref="BigInteger"/></param>
    /// <returns>A list of factors of the number. The return type is <see
    /// cref="List"/> of <see cref="BigInteger"/>.</returns>
    public static List<BigInteger> Factor(BigInteger n)
    {
        var factors = new List<BigInteger>();
        var max = (int)n;

        for (int i = 1; i <= max; i++)
        {
            var divisor = new BigInteger(i);
            if (n % divisor == BigInteger.Zero)
            {
                factors.Add(divisor);
            }
        }

        return factors;
    }

    public static string FactorRandom()
    {
        var rng = new Random();
        var randomNum = rng.Next(1, 26);

        var factors = Factor(new BigInteger(randomNum));

        return $"Factor[{randomNum}] = [{string.Join(", ", factors)}]";
    }

    public static List<BigInteger> PrimeFactor(BigInteger n)
    {
        var primeFactors = new List<BigInteger>();
        BigInteger divisor = 2;

        while (divisor * divisor <= n)
        {
            if (n % divisor == BigInteger.Zero)
            {
                primeFactors.Add(divisor);
                n /= divisor;
            }
            else
            {
                divisor = divisor == 2 ? 3 : divisor + 2;
            }
        }

        if (n > BigInteger.One)
        {
            primeFactors.Add(n);
        }

        return primeFactors;
    }

    public static string PrimeFactorRandom()
    {
        var rng = new Random();
        var randomNum = rng.Next(1, 26);

        var primeFactors = PrimeFactor(new BigInteger(randomNum));

        return $"PFactor[{randomNum}] = [{string.Join(", ", primeFactors)}]";
    }
}
