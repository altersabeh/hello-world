use std::env;

use cargo_hello::cli_functions::greeter::{print_goodbye_message, print_welcome_message};

fn main() {
    let args: Vec<_> = env::args().collect();
    println!("=============================================");
    print_welcome_message(&args.iter().map(AsRef::as_ref).collect::<Vec<_>>());
    print_goodbye_message(&args.iter().map(AsRef::as_ref).collect::<Vec<_>>());
    println!("=============================================");
}
