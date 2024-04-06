use crate::goodbye_world::print_goodbye;
use crate::hello_world::print_greeting;

pub fn print_welcome_message(args: &[&str]) {
    println!("{}", print_greeting(args));
}

pub fn print_goodbye_message(args: &[&str]) {
    eprintln!("{}", print_goodbye(args));
}
