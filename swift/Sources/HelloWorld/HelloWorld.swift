import Foundation

/// # `printGreeting`
/// This function prints a greeting. It takes a list of strings as an argument.
/// If the list is empty, it prints a default greeting. Otherwise, it prints a
/// personalized greeting using the strings in the list.
///
/// __Signature:__
/// ```swift
/// public func printGreeting(_ args: [String]) -> String
/// ```
/// __Example:__
/// ```swift
/// import HelloWorld
///
/// print(printGreeting([]))
/// print(printGreeting(["", "John", "Doe"]))
/// ```
/// __Output:__
/// ```swift
/// "Hello World from SwiftPM !"
/// "Hi John Doe, greetings from SwiftPM !"
/// ```
public func printGreeting(_ args: [String]) -> String {
  if args.count > 1 {
    let name = args[1...].joined(separator: " ")
    return "Hi \(name), greetings from SwiftPM !"
  } else {
    return "Hello World from SwiftPM !"
  }
}

public func printDate() -> String {
  let dateFormatter = DateFormatter()
  dateFormatter.dateFormat = "MMMM d, yyyy 'at' h:mm a"
  let currentDate = dateFormatter.string(from: Date())
  return "Today is \(currentDate)"
}
