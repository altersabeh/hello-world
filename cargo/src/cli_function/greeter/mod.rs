use crate::goodbye_world::print_goodbye;
use crate::hello_world::print_greeting;

/// # `print_welcome_message`
///
/// This funtion prints the welcome message by calling the `printGreeting`.
///
/// __Arguments:__
///
/// * `args: &[&str]` - The arguments passed to the program.    
///
/// __Example:__
/// ```rust
/// use prog::cli_function::greeter::print_welcome_message;
/// print_welcome_message(&["", "John", "Doe"]);
/// print_welcome_message(&[]);
/// ```
pub fn print_welcome_message(args: &[&str]) {
    println!("{}", print_greeting(args));
}

/// # `print_goodbye_message`
///
/// This funtion prints the goodbye message by calling the `printGoodbye`.
///
/// __Arguments:__
///
/// * `args: &[&str]` - The arguments passed to the program.
///
/// __Example:__
/// ```rust
/// use prog::cli_function::greeter::print_goodbye_message;
/// print_goodbye_message(&["", "John", "Doe"]);
/// print_goodbye_message(&[]);
/// ```
pub fn print_goodbye_message(args: &[&str]) {
    eprintln!("{}", print_goodbye(args));
}
