use chrono::{DateTime, Local};
use std::process::Command;

#[test]
fn hello_world_test() {
  let now: DateTime<Local> = Local::now();
  let expected_output = format!(
    "Hello World from Cargo !\nToday is {}\n",
    now.format("%B %e, %Y %H:%M:%S")
  );

  let output = Command::new("./target/debug/cargo-hello")
    .output()
    .expect("failed to execute process");

  assert!(
    output.status.success(),
    "Command did not execute successfully: {}",
    String::from_utf8_lossy(&output.stderr)
  );

  assert_eq!(
    String::from_utf8_lossy(&output.stdout),
    expected_output,
    "Output did not match expected output"
  );
}

#[test]
fn hello_world_with_name_test() {
  let name: &str = "Alter Sabeh";
  let now: DateTime<Local> = Local::now();
  let expected_output = format!(
    "Hi {}, greetings from Cargo !\nToday is {}\n",
    name,
    now.format("%B %e, %Y %H:%M:%S")
  );

  let output = Command::new("./target/debug/cargo-hello")
    .arg("Alter Sabeh")
    .output()
    .expect("failed to execute process");

  assert!(
    output.status.success(),
    "Command did not execute successfully: {}",
    String::from_utf8_lossy(&output.stderr)
  );

  assert_eq!(
    String::from_utf8_lossy(&output.stdout),
    expected_output,
    "Output did not match expected output"
  );
}
