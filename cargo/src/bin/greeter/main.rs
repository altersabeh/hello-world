use std::env;

use prog::cli_function::greeter::{print_goodbye_message, print_welcome_message};

/// # `main`
///
/// This function is the entry point of the application.
///
/// __Arguments:__
///
/// * `args: Vec<String>` - The command line arguments.
fn main() {
    let args: Vec<_> = env::args().collect();
    println!("=============================================");
    print_welcome_message(&args.iter().map(AsRef::as_ref).collect::<Vec<_>>());
    print_goodbye_message(&args.iter().map(AsRef::as_ref).collect::<Vec<_>>());
    println!("=============================================");
}
