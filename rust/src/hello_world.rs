// Hello World in Rust !

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
  let now: DateTime<Local> = Local::now();
  println!("Today is {}", now.format("%B %e, %Y %H:%M:%S"));
}

fn main() {
  let args: Vec<_> = env::args().collect();
  print_greeting(&args);
  print_date();
}
