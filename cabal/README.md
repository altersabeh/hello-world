# Cabal - Hello World

A simple **Hello World** program in Cabal.

## Programming Language

- Haskell

## Project Structure

``` shell
├── CHANGELOG.md
├── LICENSE.md
├── README.md
├── app
│   ├── Functions.hs
│   └── Main.hs
├── cabal-hello.cabal
├── cabal.project
├── packages
│   ├── numbers-lib
│   │   ├── numbers-lib.cabal
│   │   ├── src
│   │   │   └── Numbers
│   │   │       └── Lib.hs
│   │   └── tests
│   │       └── NumbersLibTests.hs
│   └── translator
│       ├── src
│       │   └── Translator.hs
│       ├── tests
│       │   └── TranslatorTests.hs
│       └── translator.cabal
├── src
│   ├── Goodbye
│   │   └── World.hs
│   └── Hello
│       └── World.hs
├── structure.txt
└── tests
    ├── GoodbyeWorldTests.hs
    └── HelloWorldTests.hs
```

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
