use std::io::{self, Write};

use numbers_utils::operations as mathematics;

use mathematics::factorial_utils::factorial;
use mathematics::fibonacci_utils::fibonacci;

fn get_user_number() -> i32 {
    print!("Enter a number : ");
    io::stdout().flush().unwrap();
    let mut number_str = String::new();
    io::stdin().read_line(&mut number_str).unwrap();
    number_str.trim().parse().unwrap_or(0)
}

pub fn print_number_calculations() {
    let number = get_user_number();
    println!("Fib[{}] = {}", number, fibonacci(number as usize));
    println!("Fact[{}] = {}", number, factorial(number as usize));
}
