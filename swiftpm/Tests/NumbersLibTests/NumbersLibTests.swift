import BigInt
import XCTest

@testable import NumbersLib

final class NumbersLibTests: XCTestCase {
  func testFibonacci() {
    let n = 100
    let expectedOutput = BigInt("354224848179261915075")
    let actualOutput = fibonacci(n: n)
    XCTAssertEqual(expectedOutput, actualOutput)
  }

  func testFactorial() {
    let n = 75
    let expectedOutput = BigInt(
      "24809140811395398091946477116594033660926243886570122837795894512655842677572867409443815424000000000000000000"
    )
    let actualOutput = factorial(n: n)
    XCTAssertEqual(expectedOutput, actualOutput)
  }
}
