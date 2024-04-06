use std::env;
use std::io::{self, Write};

use cargo_hello::cli_functions::banner::print_banner_message;
use cargo_hello::cli_functions::details::print_user_details;
use cargo_hello::cli_functions::greeter::{print_goodbye_message, print_welcome_message};
use cargo_hello::cli_functions::number::print_number_calculations;
use cargo_hello::cli_functions::random::print_random_numbers;

fn wait_for_user() {
    print!("Press enter to continue ...");
    io::stdout().flush().unwrap();
    let mut _dummy = String::new();
    io::stdin().read_line(&mut _dummy).unwrap();
}

pub fn start_program() {
    let args: Vec<_> = env::args().collect();
    println!("===============================================");
    println!("");
    print_welcome_message(&args.iter().map(AsRef::as_ref).collect::<Vec<_>>());
    print_user_details(&args.iter().map(AsRef::as_ref).collect::<Vec<_>>());
    println!("");
    print_number_calculations();
    println!("");
    print_random_numbers();
    println!("");
    wait_for_user();
    println!("");
    print_goodbye_message(&args.iter().map(AsRef::as_ref).collect::<Vec<_>>());
    print_banner_message();
    println!("===============================================");
}
