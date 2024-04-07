use std::io::{self, Write};

use numbers_utils::operations as mathematics;

use mathematics::factorial_utils::factorial;
use mathematics::fibonacci_utils::fibonacci;

/// # `get_user_number`
///
/// This function reads the user input for a number and returns it.
///
/// __Return:__
///
/// * `i32` - The number entered by the user.
///
/// __Example:__
/// ```rust
/// use prog::cli_function::number::get_user_number;
/// let number = get_user_number();
/// println!("Number : {}", number);
/// ```
///
/// __Output:__
/// ```txt
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

/// # `print_number_calculations`
///
/// This function reads a number from the user and prints the Fibonacci and
/// Factorial of the number by calling `fibonacci` and `factorial` functions.
///
/// __Example:__
/// ```rust
/// use prog::cli_function::number::print_number_calculations;
/// print_number_calculations();
/// ```
///
/// __Output:__
/// ```txt
/// Enter a number : 5
/// Fib[5] = 5
/// Fact[5] = 120
/// ```
pub fn print_number_calculations() {
    let number = get_user_number();
    println!("Fib[{}] = {}", number, fibonacci(number as usize));
    println!("Fact[{}] = {}", number, factorial(number as usize));
}
