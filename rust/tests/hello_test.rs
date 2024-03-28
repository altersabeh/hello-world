use chrono::{DateTime, Local};
use std::process::Command;

#[test]
fn hello_world_test() {
  let now: DateTime<Local> = Local::now();
  let expected_output = format!(
    "Hello World from Cargo !\nCurrent Date and Time: {}\n",
    now.format("%Y-%m-%d %H:%M:%S")
  );

  let output = Command::new("./target/debug/rust-hello")
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
