using System.Numerics;

namespace Prog.Numbers.Utils.Operations.Tests;

[TestFixture]
public class FactorUtilsTests
{
    /// <summary> <h1><c>FormatErrorMessage</c></h1>
    /// <br/><br/>This method is used to format the error message.<br/><br/>
    ///
    /// <b>Arguments:</b>
    ///
    /// <list type="bullet">
    /// <item>
    /// <c>expected: List&lt;BigInteger&gt;</c> - The expected list of factors.
    /// </item>
    /// <item>
    /// <c>actual: List&lt;BigInteger&gt;</c> - The actual list of factors.
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
    private static string FormatErrorMessage(List<BigInteger> expected, List<BigInteger> actual)
    {
        return $"\nTest run at: {DateTime.Now:O}\nExpected : {string.Join(", ", expected)}\nActual   : {string.Join(", ", actual)}\n";
    }

    /// <summary> <h1><c>FactorTest</c></h1>
    /// <br/><br/>This method is used to test the Factor method of
    /// FactorUtils.<br/><br/>
    /// </summary>
    [Test]
    public void FactorTest()
    {
        BigInteger number = 60;
        List<BigInteger> expectedOutput = [1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 30, 60];
        List<BigInteger> actualOutput = FactorUtils.Factor(number);
        Assert.That(actualOutput, Is.EqualTo(expectedOutput));
    }

    /// <summary> <h1><c>FactorRandomTest</c></h1>
    /// <br/><br/>This method is used to test the FactorRandom method of
    /// FactorUtils.<br/><br/>
    /// </summary>
    [Test]
    public void FactorRandomTest()
    {
        string result = FactorUtils.FactorRandom();
        string startString = "Factor[";
        Assert.That(
            result,
            Does.StartWith(startString),
            $"\nExpected: {startString}\n     Got: {result}\n"
        );
        Assert.That(result, Does.Contain(" = "));
    }

    /// <summary> <h1><c>PrimeFactorTest</c></h1>
    /// <br/><br/>This method is used to test the PrimeFactor method of
    /// FactorUtils.<br/><br/>
    /// </summary>
    [Test]
    public void PrimeFactorTest()
    {
        BigInteger number = 60;
        List<BigInteger> expectedOutput = [2, 2, 3, 5];
        List<BigInteger> actualOutput = FactorUtils.PrimeFactor(number);
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }

    /// <summary> <h1><c>PrimeFactorRandomTest</c></h1>
    /// <br/><br/>This method is used to test the PrimeFactorRandom method of
    /// FactorUtils.<br/><br/>
    /// </summary>
    [Test]
    public void PrimeFactorRandomTest()
    {
        string result = FactorUtils.PrimeFactorRandom();
        string startString = "PFactor[";
        Assert.That(
            result,
            Does.StartWith(startString),
            $"\nExpected: {startString}\n     Got: {result}\n"
        );
        Assert.That(result, Does.Contain(" = "));
    }
}
