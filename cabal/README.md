# Cabal - Hello World

A simple **Hello World** program in **Cabal**.

## Programming Language

- Haskell

## Project Structure

``` plaintext
 hello-cabal
├─────  app
│      ├───── 󰲒 Functions.hs
│      └───── 󰲒 Main.hs
├─────  dist-newstyle
│      ├─────  build
│      │      └───── ...
│      ├─────  cache
│      │      └───── ...
│      ├─────  package.db
│      │      └───── ...
│      └─────  tmp
│             └───── ...
├─────  packages
│      ├─────  numbers-lib
│      │      ├─────  src
│      │      │      └─────  Numbers
│      │      │             └───── 󰲒 Lib.hs
│      │      ├─────  tests
│      │      │      └───── 󰲒 NumbersLibTests.hs
│      │      └───── 󰲒 numbers-lib.cabal
│      └─────  translator
│             ├─────  src
│             │      └───── 󰲒 Translator.hs
│             ├─────  tests
│             │      └───── 󰲒 TranslatorTests.hs
│             └───── 󰲒 translator.cabal
├─────  src
│      ├─────  Goodbye
│      │      └───── 󰲒 World.hs
│      └─────  Hello
│             └───── 󰲒 World.hs
├─────  tests
│      ├───── 󰲒 GoodbyeWorldTests.hs
│      └───── 󰲒 HelloWorldTests.hs
├───── 󰲒 cabal-hello.cabal
├───── 󰲒 cabal.project
├─────  CHANGELOG.md
├─────  LICENSE.md
└─────  README.md
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
