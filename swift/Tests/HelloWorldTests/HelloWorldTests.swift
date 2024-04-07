import XCTest

@testable import HelloWorld

final class HelloWorldTests: XCTestCase {
  func testPrintGreetingWithoutName() {
    let args: [String] = []
    let expectedOutput = "Hello World from SwiftPM !"
    let actualOutput = printGreeting(args)
    XCTAssertEqual(actualOutput, expectedOutput)
  }

  func testPrintGreetingWithName() {
    let args = ["", "Alter", "Sabeh"]
    let expectedOutput = "Hi Alter Sabeh, greetings from SwiftPM !"
    let actualOutput = printGreeting(args)
    XCTAssertEqual(actualOutput, expectedOutput)
  }

  func testPrintDate() {
    let now = Date()
    let formattedDate = DateFormatter.localizedString(
      from: now, dateStyle: .long, timeStyle: .short
    )
    let expectedOutput = "Today is \(formattedDate)"
    let actualOutput = printDate()
    XCTAssertEqual(actualOutput, expectedOutput)
  }
}
