use std::env;
use std::io::{self, Write};

use numbers_lib::fibonacci;

fn get_user_number() -> i32 {
    print!("Enter a number : ");
    io::stdout().flush().unwrap();
    let mut number_str = String::new();
    io::stdin().read_line(&mut number_str).unwrap();
    number_str.trim().parse().unwrap_or(0)
}

fn print_fibonacci() {
    let args: Vec<String> = env::args().collect();
    let number = if args.len() > 1 {
        args[1].parse().unwrap_or(0)
    } else {
        get_user_number()
    };
    println!("Fib[{}] = {}", number, fibonacci(number as usize));
}

fn main() {
    print_fibonacci();
}
