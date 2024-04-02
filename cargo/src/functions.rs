#[path = "bin/banner/banner.rs"]
mod banner;
#[path = "bin/details/details.rs"]
mod details;

#[path = "bin/greeter/greeter.rs"]
mod greeter;

#[path = "bin/number/number.rs"]
mod number;

#[path = "bin/random/random.rs"]
mod random;

use banner::print_banner_message;
use details::print_user_details;
use greeter::{print_goodbye_message, print_welcome_message};
use number::print_number_calculations;
use random::print_random_numbers;

use std::env;
use std::io::{self, Write};

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
    print_welcome_message(&args);
    print_user_details(&args);
    println!("");
    print_number_calculations();
    println!("");
    print_random_numbers();
    println!("");
    wait_for_user();
    println!("");
    print_goodbye_message(&args);
    print_banner_message();
    println!("===============================================");
}
