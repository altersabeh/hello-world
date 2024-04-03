use crate::hello_world::print_date;

use std::io;
use std::io::Write;

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

pub fn print_user_details(args: &[String]) {
    let name = get_user_name(args);
    let language = get_user_language();
    println!("{}", translate(&language, &name));
    println!("{}", print_date());
}
