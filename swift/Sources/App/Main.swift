// Hello World in SwiftPM

import HelloWorld
import NumbersLib

let args = CommandLine.arguments
print(printGreeting(args))
print(printDate())
print("Some random numbers:")
print(fibonacciRandom())
print(factorialRandom())
