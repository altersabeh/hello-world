use std::env;
use std::io::{self, Write};
use std::str::FromStr;

use num_bigint::BigUint;
use num_traits::Zero;

use numbers_utils::operations::factor_utils::{factor, prime_factor};

fn get_user_number() -> BigUint {
    print!("Enter a number : ");
    io::stdout().flush().unwrap();
    let mut number_str = String::new();
    io::stdin().read_line(&mut number_str).unwrap();
    BigUint::from_str(number_str.trim()).unwrap_or_else(|_| BigUint::zero())
}

fn get_number() -> BigUint {
    let args: Vec<String> = env::args().collect();
    if args.len() > 1 {
        BigUint::from_str(&args[1]).unwrap_or_else(|_| BigUint::zero())
    } else {
        get_user_number()
    }
}

fn print_factor(number: BigUint) {
    let factors = factor(number.clone());
    let factors_str = format!("{:?}", factors);
    println!("Factor[{}] = {}", number, factors_str);
}

fn print_prime_factor(number: BigUint) {
    let factors = prime_factor(number.clone());
    let factors_str = format!("{:?}", factors);
    println!("Prime Factor[{}] = {}", number, factors_str);
}

fn main() {
    let number = get_number();
    print_factor(number.clone());
    print_prime_factor(number);
}
