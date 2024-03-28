// Hello World in Rust !

extern crate chrono;

use chrono::{DateTime, Local};
use std::env;

fn print_greeting(args: &[String]) {
  if args.len() > 1 {
    println!("Hi {}, greetings from Rust !", args[1..].join(" "));
  } else {
    println!("Hello World from Rust !");
  }
}

fn print_date() {
  let current_date: DateTime<Local> = Local::now();
  let layout: &str = "%B %e, %Y %H:%M:%S";
  let formatted_date: String = current_date.format(layout).to_string();
  println!("Today is {}", formatted_date);
}

fn main() {
  let args: Vec<_> = env::args().collect();
  print_greeting(&args);
  print_date();
}
