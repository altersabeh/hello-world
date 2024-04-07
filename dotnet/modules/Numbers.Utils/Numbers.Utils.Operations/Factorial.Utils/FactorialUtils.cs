using System.Numerics;

namespace Prog.Numbers.Utils.Operations;

public class FactorialUtils
{
    public static BigInteger Factorial(int n)
    {
        BigInteger fact = 1;

        for (int i = 1; i <= n; i++)
        {
            fact *= i;
        }

        return fact;
    }

    public static string FactorialRandom()
    {
        Random rng = new();
        int randomNum = rng.Next(1, 26);

        BigInteger fact = Factorial(randomNum);

        return $"Fact[{randomNum}] = {fact}";
    }
}
