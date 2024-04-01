# Cargo - Hello World

A simple **Hello World** program in Cargo.

## Programming Language

-   Rust

## Project Structure

```plaintext
cargo
├───── crates
│      ├───── date-today
│      │      ├───── Cargo.toml
│      │      └───── src
│      │             └───── custom
│      │                    └───── date_today.rs
│      ├───── hello-world
│      │      ├───── src
│      │      │      └───── main.rs
│      │      └───── Cargo.toml
│      ├───── numbers-lib
│      │      ├───── src
│      │      │      ├───── bin
│      │      │      │      ├───── factorial.rs
│      │      │      │      └───── fibonacci.rs
│      │      │      └───── lib.rs
│      │      ├───── tests
│      │      │      └───── numbers_lib_tests.rs
│      │      └───── Cargo.toml
│      └───── translator
│             ├───── src
│             │      └───── lib.rs
│             ├───── tests
│             │      └───── translator_test.rs
│             └───── Cargo.toml
├───── src
│      ├───── bin
│      │      ├───── banner
│      │      │      ├───── banner.rs
│      │      │      └───── main.rs
│      │      ├───── details
│      │      │      ├───── details.rs
│      │      │      └───── main.rs
│      │      ├───── greeter
│      │      │      ├───── greeter.rs
│      │      │      └───── main.rs
│      │      ├───── number
│      │      │      ├───── main.rs
│      │      │      └───── number.rs
│      │      └───── random
│      │             ├───── main.rs
│      │             └───── random.rs
│      ├───── goodbye_world
│      │      └───── mod.rs
│      ├───── hello_world
│      │      └───── mod.rs
│      ├───── functions.rs
│      ├───── lib.rs
│      └───── main.rs
├───── target
│      ├───── .rustc_info.json
│      ├───── CACHEDIR.TAG
│      ├───── debug
│      │      └───── ...
│      └───── tmp
│             └───── ...
├───── tests
│      ├───── goodbye_world_tests.rs
│      └───── hello_world_tests.rs
├───── Cargo.lock
├───── Cargo.toml
├───── rustfmt.toml
├───── CHANGELOG.md
├───── LICENSE.md
└───── README.md
```

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
