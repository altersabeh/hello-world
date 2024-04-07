using System.Numerics;

namespace Prog.Numbers.Utils.Operations.Tests;

[TestFixture]
public class FibonacciUtilsTests
{
    private static string FormatErrorMessage(BigInteger expected, BigInteger actual)
    {
        return $"\nTest run at: {DateTime.Now:O}\nExpected : {expected}\nActual   : {actual}\n";
    }

    [Test]
    public void FibonacciTest()
    {
        int n = 100;
        BigInteger expectedOutput = BigInteger.Parse("354224848179261915075");
        BigInteger actualOutput = FibonacciUtils.Fibonacci(n);
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }

    [Test]
    public void FinonacciRandomTest()
    {
        string result = FibonacciUtils.FibonacciRandom();
        string startString = "Fib[";
        Assert.That(
            result,
            Does.StartWith(startString),
            $"\nExpected: {startString}\n     Got: {result}\n"
        );
        Assert.That(result, Does.Contain(" = "));
    }
}
