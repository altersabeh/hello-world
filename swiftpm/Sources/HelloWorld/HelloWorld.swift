import Foundation

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
