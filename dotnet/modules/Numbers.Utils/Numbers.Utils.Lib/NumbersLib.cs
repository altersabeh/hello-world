using System.Numerics;

namespace Numbers.Lib;

public class NumbersLib
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
        Random rng = new Random();
        int randomNum = rng.Next(1, 51);

        BigInteger fib = Fibonacci(randomNum);

        return $"Fib[{randomNum}] = {fib}";
    }

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
        Random rng = new Random();
        int randomNum = rng.Next(1, 26);

        BigInteger fact = Factorial(randomNum);

        return $"Fact[{randomNum}] = {fact}";
    }
}
