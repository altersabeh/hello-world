use std::env;
use std::io::{self, Write};

use numbers_utils::operations::fibonacci_utils::fibonacci;

/// # `get_user_number`
///
/// This function reads the user input for a number and returns it.
///
/// __Return:__
///
/// * `i32` - The number entered by the user.
///
/// __Example:__
///
/// ```rust
/// let number: i32 = get_user_number();
/// println!("Number : {}", number);
/// ```
///
/// __Output:__
///
/// ```rust
/// Enter a number : 5
/// Number : 5
/// ```
fn get_user_number() -> i32 {
    print!("Enter a number : ");
    io::stdout().flush().unwrap();
    let mut number_str = String::new();
    io::stdin().read_line(&mut number_str).unwrap();
    number_str.trim().parse().unwrap_or(0)
}

/// # `print_fibonacci`
///
/// This function prints the fibonacci of a number.
///
/// __Example:__
///
/// ```rust
/// use numbers_utils::cli_function::fibonacci::print_fibonacci;
/// print_fibonacci();
/// ```
/// __Output:__'
///
/// ```rust
/// "Enter a number : 5"
/// "Fib[5] = 5"
fn print_fibonacci() {
    let args: Vec<String> = env::args().collect();
    let number = if args.len() > 1 {
        args[1].parse().unwrap_or(0)
    } else {
        get_user_number()
    };
    println!("Fib[{}] = {}", number, fibonacci(number as usize));
}

/// # `main`
///
/// The main function starts the program by calling the `print_fibonacci`
fn main() {
    print_fibonacci();
}
