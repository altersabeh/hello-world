use cargo_hello::goodbye_world::{print_banner, print_goodbye};
use cargo_hello::hello_world::{print_date, print_greeting};
use numbers_lib::{factorial, factorial_random, fibonacci, fibonacci_random};
use std::env;
use std::io::{self, Write};
use translator::translate;

fn get_user_name(args: &[String]) -> String {
    if args.len() <= 1 {
        print!("Please enter your name : ");
        io::stdout().flush().unwrap();
        let mut name = String::new();
        io::stdin().read_line(&mut name).unwrap();
        name.trim().to_string()
    } else {
        args[1..].join(" ")
    }
}

fn get_user_language() -> String {
    print!("Please enter your language : ");
    io::stdout().flush().unwrap();
    let mut language = String::new();
    io::stdin().read_line(&mut language).unwrap();
    language.trim().to_string()
}

fn get_user_number() -> i32 {
    print!("Enter a number : ");
    io::stdout().flush().unwrap();
    let mut number_str = String::new();
    io::stdin().read_line(&mut number_str).unwrap();
    number_str.trim().parse().unwrap_or(0)
}

pub fn print_welcome_message(args: &[String]) {
    println!("\n{}", print_greeting(args));
}

fn print_user_details(args: &[String]) {
    let name = get_user_name(args);
    let language = get_user_language();
    println!("{}", translate(&language, &name));
    println!("{}", print_date());
}

fn print_number_calculations() {
    let number = get_user_number();
    println!("Fib[{}] = {}", number, fibonacci(number as usize));
    println!("Fact[{}] = {}", number, factorial(number as usize));
}

fn print_random_numbers() {
    println!("\nSome random numbers: ");
    println!("{}", fibonacci_random());
    println!("{}", factorial_random());
}

fn wait_for_user() {
    println!("");
    print!("Press enter to continue ...");
    io::stdout().flush().unwrap();
    let mut _dummy = String::new();
    io::stdin().read_line(&mut _dummy).unwrap();
}

fn print_goodbye_message(args: &[String]) {
    println!("\n{}", print_goodbye(args));
}

fn print_banner_message() {
    println!("{}", print_banner());
}

pub fn start_program() {
    let args: Vec<_> = env::args().collect();
    println!("=============================================");
    print_welcome_message(&args);
    print_user_details(&args);
    print_number_calculations();
    print_random_numbers();
    wait_for_user();
    print_goodbye_message(&args);
    print_banner_message();
    println!("=============================================");
}
