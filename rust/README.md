# Rust - Hello World

A simple **Hello World** program in Rust.

## Build Tool

- Cargo

## Creating a new Cargo project

To create a new **`cargo`** project, run the following command:

`cargo new --bin hello-world`

## Building the project

To build the project, navigate to the project directory and run the following
command:

`cargo build`

## Running the project

To run the project, navigate to the project directory and run the following
command:

`cargo run`

## Testing the project

To test the project, navigate to the project directory and run the following
command:

`cargo test`

## Project Structure

```plaintext
rust-hello
├──── .cargo
│     └──── config.toml
├──── crates
│     ├──── date-today
│     │     ├──── src
│     │     │     └──── custom
│     │     │           └──── date_today.rs
│     │     └──── Cargo.toml
│     ├──── hello-rust
│     │     ├──── src
│     │     │     └──── main.rs
│     │     └──── Cargo.toml
│     ├──── numbers-utils
│     │     ├──── src
│     │     │     ├──── bin
│     │     │     │     ├──── factor.rs
│     │     │     │     ├──── factorial.rs
│     │     │     │     └──── fibonacci.rs
│     │     │     ├──── operations
│     │     │     │     ├──── factor_utils.rs
│     │     │     │     ├──── factorial_utils.rs
│     │     │     │     ├──── fibonacci_utils.rs
│     │     │     │     └──── mod.rs
│     │     │     └──── lib.rs
│     │     ├──── tests
│     │     │     ├──── operations
│     │     │     │     ├──── factor_utils_tests.rs
│     │     │     │     ├──── factorial_utils_tests.rs
│     │     │     │     ├──── fibonacci_utils_tests.rs
│     │     │     │     └──── mod.rs
│     │     │     └──── operations_tests.rs
│     │     └──── Cargo.toml
│     └──── translator
│           ├──── src
│           │     └──── lib.rs
│           ├──── tests
│           │     └──── translator_test.rs
│           └──── Cargo.toml
├──── src
│     ├──── bin
│     │     ├──── banner
│     │     │     └──── main.rs
│     │     ├──── details
│     │     │     └──── main.rs
│     │     ├──── greeter
│     │     │     └──── main.rs
│     │     ├──── number
│     │     │     └──── main.rs
│     │     └──── random
│     │           └──── main.rs
│     ├──── cli_function
│     │     ├──── banner
│     │     │     └──── mod.rs
│     │     ├──── details
│     │     │     └──── mod.rs
│     │     ├──── greeter
│     │     │     └──── mod.rs
│     │     ├──── number
│     │     │     └──── mod.rs
│     │     └──── random
│     │           └──── mod.rs
│     ├──── functions.rs
│     ├──── goodbye_world
│     │     └──── mod.rs
│     ├──── hello_world
│     │     └──── mod.rs
│     ├──── lib.rs
│     └──── main.rs
├──── target
│     ├──── CACHEDIR.TAG
│     ├──── debug
│     │     ├──── build
│     │     │     └──── ...
│     │     ├──── deps
│     │     │     └──── ...
│     │     ├──── examples
│     │     │     └──── ...
│     │     ├──── incremental
│     │     │     ├──── cargo_hello
│     │     │     │     └──── ...
│     │     │     └──── ...
│     │     └──── ...
│     ├──── package
│     │     └──── ...
│     ├──── release
│     │     ├──── build
│     │     │     └──── ...
│     │     ├──── deps
│     │     │     └──── ...
│     │     ├──── examples
│     │     │     └──── ...
│     │     ├──── incremental
│     │     │     ├──── hello_rust
│     │     │     │     └──── ...
│     │     │     └──── ...
│     │     └──── ...
│     └──── tmp
│           └──── ...
├──── tests
│     ├──── goodbye_world_tests.rs
│     └──── hello_world_tests.rs
├──── Cargo.lock
├──── Cargo.toml
├──── rustfmt.toml
├──── CHANGELOG.md
├──── LICENSE.md
└──── README.md
```
