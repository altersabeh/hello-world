using System.Numerics;

namespace Prog.Numbers.Utils.Operations;

public class FibonacciUtils
{
    public static BigInteger Fibonacci(int n)
    {
        BigInteger firstTerm = 0;
        BigInteger secondTerm = 1;

        for (int i = 0; i < n; i++)
        {
            BigInteger temp = firstTerm;
            firstTerm = secondTerm;
            secondTerm += temp;
        }

        return firstTerm;
    }

    public static string FibonacciRandom()
    {
        Random rng = new();
        int randomNum = rng.Next(1, 51);

        BigInteger fib = Fibonacci(randomNum);

        return $"Fib[{randomNum}] = {fib}";
    }
}
