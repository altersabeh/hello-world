using System.Numerics;

namespace Prog.Numbers.Utils.Operations.Tests;

[TestFixture]
public class FibonacciUtilsTests
{
    /// <summary> <h1><c>FormatErrorMessage</c></h1>
    /// <br/><br/>This method is used to format the error message.<br/><br/>
    ///
    /// <b>Arguments:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>expected: BigInteger</c> - The expected list of factors.
    /// </item>
    /// <item>
    /// <c>actual: BigInteger</c> - The actual list of factors.
    /// </item>
    /// </list>
    ///
    /// <b>Return:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>string</c> - The formatted error message.
    /// </item>
    /// </list>
    /// </summary>
    private static string FormatErrorMessage(BigInteger expected, BigInteger actual)
    {
        return $"\nTest run at: {DateTime.Now:O}\nExpected : {expected}\nActual   : {actual}\n";
    }

    /// <summary> <h1><c>FibonacciTest</c></h1>
    /// <br/><br/>This method is used to test the Fibonacci method of
    /// FibonacciUtils.<br/><br/>
    /// </summary>
    [Test]
    public void FibonacciTest()
    {
        int n = 100;
        BigInteger expectedOutput = BigInteger.Parse("354224848179261915075");
        BigInteger actualOutput = FibonacciUtils.Fibonacci(n);
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }

    /// <summary> <h1><c>FinonacciRandomTest</c></h1>
    /// <br/><br/>This method is used to test the FibonacciRandom method of
    /// FibonacciUtils.<br/><br/>
    /// </summary>
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
