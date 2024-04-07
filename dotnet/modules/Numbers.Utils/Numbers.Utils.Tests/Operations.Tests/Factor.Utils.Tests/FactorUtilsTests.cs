using System.Numerics;

namespace Prog.Numbers.Utils.Operations.Tests;

[TestFixture]
public class FactorUtilsTests
{
    private static string FormatErrorMessage(List<BigInteger> expected, List<BigInteger> actual)
    {
        return $"\nTest run at: {DateTime.Now:O}\nExpected : {string.Join(", ", expected)}\nActual   : {string.Join(", ", actual)}\n";
    }

    [Test]
    public void FactorTest()
    {
        BigInteger number = 60;
        List<BigInteger> expectedOutput = [1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 30, 60];
        List<BigInteger> actualOutput = FactorUtils.Factor(number);
        Assert.That(actualOutput, Is.EqualTo(expectedOutput));
    }

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

    [Test]
    public void PrimeFactorTest()
    {
        BigInteger number = 60;
        List<BigInteger> expectedOutput = [2, 2, 3, 5];
        List<BigInteger> actualOutput = FactorUtils.PrimeFactor(number);
        string errorMessage = FormatErrorMessage(expectedOutput, actualOutput);
        Assert.That(expectedOutput, Is.EqualTo(actualOutput), errorMessage);
    }

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
