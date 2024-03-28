use chrono::{DateTime, Local};

fn main() {
  let now: DateTime<Local> = Local::now();

  println!("Hello World from Rust !");
  println!("Current Date and Time: {}", now.format("%Y-%m-%d %H:%M:%S"));
}
