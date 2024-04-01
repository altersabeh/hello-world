use numbers_lib::{factorial, fibonacci};
use std::io::{self, Write};

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
