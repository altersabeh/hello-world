# Cabal - Hello World

A simple **Hello World** program in **Cabal**.

## Programming Language

- Haskell

## Creating a new Cabal project

To create a new **`cabal`** project, run the following command:

`cabal new hello-world`

## Building the project

To build the project, navigate to the project directory and run the following
command:

`cabal build`

## Running the project

To run the project, navigate to the project directory and run the following
command:

`cabal run`

## Testing the project

To test the project, navigate to the project directory and run the following
command:

`cabal test all`

## Project Structure

``` plaintext
cabal-hello
├── app
│   ├── Command
│   │   ├── Banner.hs
│   │   ├── Details.hs
│   │   ├── Greeter.hs
│   │   ├── Number.hs
│   │   └── Random.hs
│   ├── Functions.hs
│   └── Main.hs
├── dist-newstyle
│   ├── build
│   │   └── x86_64-linux
│   │       └── ghc-9.6.4
│   │           ├── cabal-hello
│   │           │   ├── build
│   │           │   │   └── ...
│   │           │   ├── cache
│   │           │   │   └── ...
│   │           │   ├── l
│   │           │   │   └── ...
│   │           │   └── x
│   │           │       └── ...
│   │           └── ...
│   ├── cache
│   │   └── ...
│   ├── packagedb
│   │   └── ghc-9.6.4
│   │       └── ...
│   └── tmp
│       └── ...
├── packages
│   ├── date-today
│   │   ├── app
│   │   │   └── custom
│   │   │       └── DateToday.hs
│   │   └── date-today.cabal
│   ├── hello-cabal
│   │   ├── app
│   │   │   └── Main.hs
│   │   └── hello-world.cabal
│   ├── numbers-utils
│   │   ├── app
│   │   │   ├── Factorial.hs
│   │   │   └── Fibonacci.hs
│   │   ├── src
│   │   │   └── Numbers
│   │   │       └── Lib.hs
│   │   ├── tests
│   │   │   └── NumbersUtilsTests.hs
│   │   └── numbers-utils.cabal
│   └── translator
│       ├── src
│       │   └── Translator.hs
│       ├── tests
│       │   └── TranslatorTests.hs
│       └── translator.cabal
├── src
│   ├── CLI
│   │   └── Function
│   │       ├── Banner.hs
│   │       ├── Details.hs
│   │       ├── Greeter.hs
│   │       ├── Number.hs
│   │       └── Random.hs
│   ├── Goodbye
│   │   └── World.hs
│   └── Hello
│       └── World.hs
├── tests
│   ├── GoodbyeWorldTests.hs
│   └── HelloWorldTests.hs
├── cabal-hello.cabal
├── cabal.project
├── fourmolu.yaml
├── CHANGELOG.md
├── LICENSE.md
└── README.md
```
