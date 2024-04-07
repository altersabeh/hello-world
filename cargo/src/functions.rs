use std::env;
use std::io::{self, Write};

use prog::cli_function::banner::print_banner_message;
use prog::cli_function::details::print_user_details;
use prog::cli_function::greeter::{print_goodbye_message, print_welcome_message};
use prog::cli_function::number::print_number_calculations;
use prog::cli_function::random::print_random_numbers;

/// # `wait_for_user`
///
/// This function waits for the user to press the Enter key before continuing.
///
/// __Example:__
/// ```rust
/// use prog::functions::wait_for_user;
/// wait_for_user();
/// ```
///
/// __Output:__
/// ```txt
/// Press enter to continue ...
/// ```
fn wait_for_user() {
    print!("Press enter to continue ...");
    io::stdout().flush().unwrap();
    let mut _dummy = String::new();
    io::stdin().read_line(&mut _dummy).unwrap();
}

/// # `start_program`
///
/// This function starts the program by printing a welcome message, user
/// details, number calculations, random numbers, and a goodbye message.
///
/// __Example:__
/// ```rust
/// use prog::functions::start_program;
/// start_program();
/// ```
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
