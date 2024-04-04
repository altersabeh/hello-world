# Cabal - Hello World

A simple **Hello World** program in **Cabal**.

## Programming Language

- Haskell

## Creating a new Cabal project

To create a new **`cabal`** project, run the following command:

```
cabal new hello-world
```

## Building the project

To build the main project, run the following
command:

```
cabal build
```

To build specific components of the project, run the following command:

```
cabal build project:component
```

To build subprojects of the workspace, run the following command:

```
cabal build subproject
cabal build subproject:component
cabal build subproject1 subproject2
cabal build subproject1:component subproject2:component
```

To build all the members of the workspace, run the following command:

```
cabal build all
```

## Running the project

To run the main project, run the following command:

```
cabal run project
```

To run specific components of the project, run the following command:

```
cabal run project:executable
cabal run project:execuatble1 project:executable2
```

To run subprojects of the workspace, run the following command:

```
cabal run subproject
cabal run subproject:executable
cabal run subproject1 subproject2
cabal run subproject1:executable subproject2:executable
```

## Testing the project

To test the main project, run the following command:

```
cabal test
```

To test specific components of the project, run the following command:

```
cabal test project:test-suite
cabal test project:test-suite1 project:test-suite2
```

To test subprojects of the workspace, run the following command:

```
cabal test subproject
cabal test subproject:test-suite
cabal test subproject1 subproject2
cabal test subproject1:test-suite subproject2:test-suite
```

To test all the members of the workspace, run the following command:

```
cabal test all
```

## Cleaning the project

To clean the project, run the following command:

```
cabal clean
```

## Code Formatting

To format the project/workspace, run the following command:

```
fourmolu -i .
```

## Code Linting

To lint the project/workspace, run the following command:

```
hlint .
```

## Other Commands

Creating a source distribution:

```
cabal sdist
cabal sdist subproject
cabal sdist all
```

## Project Structure

Name | Description
:--- | :---
**`app/`** | Contains the main executable and its components.
**`dist-newstyle/`** | Contains the build artifacts.
**`packages/`** | Contains the subprojects.
**`src/`** | Contains the library source code.
**`tests/`** | Contains the test code.
**`cabal-hello.cabal`** | Contains the project metadata.
**`cabal.project`** | Contains the project or workspace configuration.
**`fourmolu.yaml`** | Contains the code formatting configuration.
**`CHANGELOG.md`** | Contains the project changelog.
**`LICENSE.md`** | Contains the project license.
**`README.md`** | Contains the project documentation.

``` plaintext
cabal-hello
├──── app
│     ├──── Command
│     │     ├──── Banner.hs
│     │     ├──── Details.hs
│     │     ├──── Greeter.**hs**
│     │     ├──── Number.hs
│     │     └──── Random.hs
│     ├──── Functions.hs
│     └──── Main.hs
├──── dist-newstyle
│     ├──── build
│     │     └──── x86_64-linux
│     │           └──── ghc-9.6.4
│     │                 ├──── cabal-hello
│     │                 │     ├──── build
│     │                 │     │     └──── ...
│     │                 │     ├──── cache
│     │                 │     │     └──── ...
│     │                 │     ├──── l
│     │                 │     │     └──── ...
│     │                 │     ├──── package.conf.inplace
│     │                 │     │     └──── ...
│     │                 │     └──── x
│     │                 │           └──── ...
│     │                 └──── ...
│     ├──── cache
│     │     └──── ...
│     ├──── packagedb
│     │     └──── ghc-9.6.4
│     │           └──── ...
│     ├──── sdist
│     │     └──── ...
│     └──── tmp
│           └──── ...
├──── packages
│     ├──── date-today
│     │     ├──── app
│     │     │     └──── custom
│     │     │           └──── DateToday.hs
│     │     └──── date-today.cabal
│     ├──── hello-cabal
│     │     ├──── app
│     │     │     └──── Main.hs
│     │     └──── hello-world.cabal
│     ├──── numbers-utils
│     │     ├──── app
│     │     │     ├──── Factor.hs
│     │     │     ├──── Factorial.hs
│     │     │     └──── Fibonacci.hs
│     │     ├──── src
│     │     │     └──── Numbers
│     │     │           └──── Utils
│     │     │                 └──── Operations
│     │     │                       ├──── FactorUtils.hs
│     │     │                       ├──── FactorialUtils.hs
│     │     │                       └──── FibonacciUtils.hs
│     │     ├──── tests
│     │     │     ├──── Operations
│     │     │     │     ├──── FactorUtilsTests.hs
│     │     │     │     ├──── FactorialUtilsTests.hs
│     │     │     │     └──── FibonacciUtilsTests.hs
│     │     │     └──── OperationsTests.hs
│     │     └──── numbers-utils.cabal
│     └──── translator
│           ├──── src
│           │     └──── Translator.hs
│           ├──── tests
│           │     └──── TranslatorTests.hs
│           └──── translator.cabal
├──── src
│     ├──── CLI
│     │     └──── Function
│     │           ├──── Banner.hs
│     │           ├──── Details.hs
│     │           ├──── Greeter.hs
│     │           ├──── Number.hs
│     │           └──── Random.hs
│     ├──── Goodbye
│     │     └──── World.hs
│     └──── Hello
│           └──── World.hs
├──── tests
│     ├──── GoodbyeWorldTests.hs
│     └──── HelloWorldTests.hs
├──── cabal-hello.cabal
├──── cabal.project
├──── fourmolu.yaml
├──── CHANGELOG.md
├──── LICENSE.md
└──── README.md
```
