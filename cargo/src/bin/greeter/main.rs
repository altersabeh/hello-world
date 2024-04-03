use cargo_hello::cli_functions::greeter::{print_goodbye_message, print_welcome_message};
use std::env;

fn main() {
    let args: Vec<_> = env::args().collect();
    println!("=============================================");
    print_welcome_message(&args);
    print_goodbye_message(&args);
    println!("=============================================");
}
