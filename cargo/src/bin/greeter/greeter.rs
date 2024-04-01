use cargo_hello::goodbye_world::print_goodbye;
use cargo_hello::hello_world::print_greeting;

pub fn print_welcome_message(args: &[String]) {
    println!("{}", print_greeting(args));
}

pub fn print_goodbye_message(args: &[String]) {
    eprintln!("{}", print_goodbye(args));
}
