use numbers_utils::operations as mathematics;

use mathematics::factorial_utils::factorial_random;
use mathematics::fibonacci_utils::fibonacci_random;

/// # `print_random_numbers`
///
/// This function prints some random numbers. The random numbers are generated
/// by calling the `fibonacciRandom` and `factorialRandom` functions.
///
/// __Example:__
///
/// ```rust
/// use prog::cli_function::random::print_random_numbers;
/// print_random_numbers();
/// ```
///
/// __Output:__'
///
/// ```rust
/// Some random numbers :
/// Fib[5] = 5
/// Fact[5] = 120
pub fn print_random_numbers() {
    println!("Some random numbers : ");
    println!("{}", fibonacci_random());
    println!("{}", factorial_random());
}
