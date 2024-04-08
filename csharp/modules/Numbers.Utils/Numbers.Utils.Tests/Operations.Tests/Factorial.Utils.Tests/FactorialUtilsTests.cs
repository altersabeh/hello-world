using System.Numerics;

namespace Prog.Numbers.Utils.Operations.Tests;

[TestFixture]
public class FactorialUtilsTests
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

    /// <summary> <h1><c>FactorialTest</c></h1>
    /// <br/><br/>This method is used to test the Factorial method of
    /// FactorialUtils.<br/><br/>
    /// </summary>
    [Test]
    public void FactorialTest()
    {
        int n = 75;
        BigInteger expectedOutput = BigInteger.Parse(
            "24809140811395398091946477116594033660926243886570122837795894512655842677572867409443815424000000000000000000"
        );
        BigInteger actualOutput = FactorialUtils.Factorial(n);
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }

    /// <summary> <h1><c>FactorialRandomTest</c></h1>
    /// <br/><br/>This method is used to test the FactorialRandom method of
    /// FactorialUtils.<br/><br/>
    /// </summary>
    [Test]
    public void FactorialRandomTest()
    {
        string result = FactorialUtils.FactorialRandom();
        string startString = "Fact[";
        Assert.That(
            result,
            Does.StartWith(startString),
            $"\nExpected: {startString}\n     Got: {result}\n"
        );
        Assert.That(result, Does.Contain(" = "));
    }
}
