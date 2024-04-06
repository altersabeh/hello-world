use chrono::{DateTime, Local};

/// # `greeting`
/// A constant string that contains a greeting message.
///
/// __Example:__
/// ```rust
/// use hello_world::print_greeting;
///
/// println!("{}", GREETING); // "Hello, Cargo's Here !"
/// ```
/// __Output:__
/// ```rust
/// "Hello, Cargo's Here !"
/// ```
pub const GREETING: &str = "Hello, Cargo's Here !";

/// # `print_greeting`
/// This function prints a greeting.  It takes a list of strings as an argument.
/// If the list is empty, it prints a default greeting.  Otherwise, it prints a
/// personalized greeting using the strings in the list.
///
/// __Signature:__
/// ```rust
/// pub fn print_greeting(args: &[&str]) -> String
/// ```
/// __Example:__
/// ```rust
/// use hello_world::print_greeting;
///
/// pub fn main() {
///     println!("{}", print_greeting(&[]));
///     println!("{}", print_greeting(&["", "John", "Doe"]));
/// }
/// ```
/// __Output:__
/// ```rust
/// "Hello World from Cargo !"
/// "Hello John Doe from Cargo !"
/// ```
pub fn print_greeting(args: &[&str]) -> String {
    if args.len() > 1 {
        format!("Hello {} from Cargo !", args[1..].join(" "))
    } else {
        "Hello World from Cargo !".to_string()
    }
}

pub fn print_date() -> String {
    let current_date: DateTime<Local> = Local::now();
    let layout: &str = "%B %d, %Y at %I:%M %p";
    let formatted_date: String = current_date.format(layout).to_string();
    format!("Today is {}", formatted_date)
}
