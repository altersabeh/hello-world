using System.Numerics;

namespace Numbers.Utils.Tests;

public class NumbersUtilsTests
{
    [Fact]
    public void FibonacciTest()
    {
        int n = 100;
        BigInteger expectedOutput = BigInteger.Parse("354224848179261915075");
        BigInteger actualOutput = NumbersUtils.Fibonacci(n);
        Assert.Equal(expectedOutput, actualOutput);
    }

    [Fact]
    public void FactorialTest()
    {
        int n = 75;
        BigInteger expectedOutput = BigInteger.Parse("24809140811395398091946477116594033660926243886570122837795894512655842677572867409443815424000000000000000000");
        BigInteger actualOutput = NumbersUtils.Factorial(n);
        Assert.Equal(expectedOutput, actualOutput);
    }
}
