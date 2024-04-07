import Foundation
import BigInt

public func fibonacci(n: Int) -> BigInt {
  var firstTerm = BigInt(0)
  var secondTerm = BigInt(1)

  for _ in 0..<n {
    let temp = firstTerm
    firstTerm = secondTerm
    secondTerm += temp
  }

  return firstTerm
}

public func fibonacciRandom() -> String {
  let randomNum = Int.random(in: 1...50)
  let fib = fibonacci(n: randomNum)

  return "Fib[\(randomNum)] = \(fib)"
}

public func factorial(n: Int) -> BigInt {
  var fact = BigInt(1)

  for i in 1...n {
    fact *= BigInt(i)
  }

  return fact
}

public func factorialRandom() -> String {
  let randomNum = Int.random(in: 1...25)
  let fact = factorial(n: randomNum)

  return "Fact[\(randomNum)] = \(fact)"
}
