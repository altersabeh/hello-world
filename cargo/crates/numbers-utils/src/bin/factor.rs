#![allow(dead_code)]
use std::env;
use std::io::{self, Write};
use std::str::FromStr;

use num_bigint::BigUint;
use num_traits::Zero;

use numbers_utils::operations::factor_utils::{factor, prime_factor};

/// # `get_user_number`
///
/// This function reads the user input for a number and returns it.
///
/// __Return:__
///
/// * `BigUint` - The number entered by the user.
///
/// __Example:__
/// ```rust
/// let number: BigUint = get_user_number();
/// println!("Number : {}", number);
/// ```
///
/// __Output:__
/// ```txt
/// Enter a number : 5
/// Number : 5
/// ```
fn get_user_number() -> BigUint {
    print!("Enter a number : ");
    io::stdout().flush().unwrap();
    let mut number_str = String::new();
    io::stdin().read_line(&mut number_str).unwrap();
    BigUint::from_str(number_str.trim()).unwrap_or_else(|_| BigUint::zero())
}

/// # `get_number`
///
/// This function reads the number from the command line arguments or from the user input.
///
/// __Arguments:__
///
/// * `args: Vec<String>` - A vector of string arguments.
///
/// __Return:__
///
/// * `BigUint` - The number entered by the user or from the command line arguments.
fn get_number() -> BigUint {
    let args: Vec<String> = env::args().collect();
    if args.len() > 1 && args[1].parse::<BigUint>().is_ok() {
        args[1].parse::<BigUint>().unwrap()
    } else {
        get_user_number()
    }
}

/// # `print_factor`
///
/// This function prints the factors of a number.
///
/// __Arguments:__
///
/// * `number: BigUint` - The number to factor.
///
/// __Example:__
/// ```rust
/// let number: BigUint = 5;
/// print_factor(number);
/// ```
///
/// __Output:__
/// ```txt
/// Factor[60] = [1, 2, 3, 4, 5, 6, 10, 12, 15, 20, 30, 60]
/// ```
fn print_factor(number: BigUint) {
    let factors = factor(number.clone());
    let factors_str = format!("{:?}", factors);
    println!("Factor[{}] = {}", number, factors_str);
}

/// # `print_prime_factor`
///
/// This function prints the prime factors of a number.
///
/// __Arguments:__
///
/// * `number: BigUint` - The number to factor.
///
/// __Example:__
/// ```rust
/// let number: BigUint = 5;
/// print_prime_factor(number);
/// ```
///
/// __Output:__
/// ```txt
/// PFactor[60] = [2, 2, 3, 5]
/// ```
fn print_prime_factor(number: BigUint) {
    let prime_factors = prime_factor(number.clone());
    let prime_factors_str = format!("{:?}", prime_factors);
    println!("PFactor[{}] = {}", number, prime_factors_str);
}

/// # `main`
///
/// The main function reads a number from the user or from the command line
/// arguments.  It then prints the factors and prime factors of the number by
/// calling the `print_factor` and `print_prime_factor` functions.
fn main() {
    let number = get_number();
    print_factor(number.clone());
    print_prime_factor(number);
}
