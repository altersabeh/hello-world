use chrono::{DateTime, Local};

/// # `greeting`
///
/// A constant string that contains a greeting message.
///
/// __Returns:__
///
/// * `GREETING: &str` - A string containing a greeting message.
///
/// __Example:__
///
/// ```rust
/// use prog::hello_world::print_greeting;
/// println!("{}", GREETING); // "Hello, Rust's Here !"
/// ```
///
/// __Output:__'
///
/// ```rust
/// Hello, Rust's Here !
/// ```
pub const GREETING: &str = "Hello, Rust's Here !";

/// # `print_greeting`
/// This function prints a greeting. It takes a list of strings as an argument.
/// If the list is empty, it prints a default greeting. Otherwise, it prints a
/// personalized greeting using the strings in the list.
///
/// __Arguments:__
///
/// * `args: &[&str]` - A list of strings containing the name of the person to
///   greet.
///
/// __Return:__
///
/// * `String` - A string containing the greeting message.
///
/// __Example:__
///
/// ```rust
/// use prog::hello_world::print_greeting;
/// println!("{}", print_greeting(&[]));
/// println!("{}", print_greeting(&["", "John", "Doe"]));
/// ```
///
/// __Output:__'
///
/// ```rust
/// Hello World from Rust !
/// Hello John Doe from Rust !
/// ```
pub fn print_greeting(args: &[&str]) -> String {
    if args.len() > 1 {
        format!("Hello {} from Rust !", args[1..].join(" "))
    } else {
        "Hello World from Rust !".to_string()
    }
}

/// # `print_date`
///
/// This function prints the current date and time.
///
/// __Return:__
///
/// * `String` - A string containing the current date and time.
///
/// __Example:__
///
/// ```rust
/// use prog::hello_world::print_date;
/// println!("{}", print_date());
/// ```
///
/// __Output:__
///
/// ```rust
/// "Today is May 15, 2015 at 08:05 AM"
/// ```
pub fn print_date() -> String {
    let current_date: DateTime<Local> = Local::now();
    let layout: &str = "%B %d, %Y at %I:%M %p";
    let formatted_date: String = current_date.format(layout).to_string();
    format!("Today is {}", formatted_date)
}
