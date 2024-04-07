using System.Numerics;

namespace Prog.Numbers.Utils.Operations.Tests;

[TestFixture]
public class FactorialUtilsTests
{
    private static string FormatErrorMessage(BigInteger expected, BigInteger actual)
    {
        return $"\nTest run at: {DateTime.Now:O}\nExpected : {expected}\nActual   : {actual}\n";
    }

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
