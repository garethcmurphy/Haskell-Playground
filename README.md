# Haskell Playground 🧪✨  

A Haskell sandbox repository for testing ideas, experimenting with algorithms, and exploring functional programming concepts. This playground is designed for both learning and prototyping in Haskell.

---

## Features ✨  

- **Algorithm Testing**: Experiment with custom algorithms and refine implementations.  
- **Functional Programming Concepts**: Test higher-order functions, monads, type classes, and more.  
- **Extensible Sandbox**: Add custom modules and utilities for specific use cases.  

---

## Prerequisites 🛠️  

- **Haskell Platform** or GHC installed on your system.  
  [Download Haskell](https://www.haskell.org/platform/)  

---

## Installation  

1. Clone the repository:  
git clone https://github.com/your-username/haskell-playground.git  
cd haskell-playground  

2. Build the project:  
stack setup  
stack build  

---

## Usage 🔧  

1. Start the Haskell REPL:  
stack ghci  

2. Load custom modules:  
:l src/MyModule.hs  

3. Run functions and test ideas directly in the REPL:  
myFunction 42  

4. Add new Haskell files in the `src/` directory to test additional algorithms.  

---

## File Structure 📂  

- `src/`: Directory for Haskell source files.  
  - `MyModule.hs`: Example module with testable functions.  
- `test/`: Directory for testing Haskell code with unit tests.  
- `stack.yaml`: Stack configuration for building the project.  
- `README.md`: Documentation for the repository.  

---

## Example Module  

```haskell
-- src/MyModule.hs
module MyModule where

-- Example: Fibonacci Sequence
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- Example: Factorial
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)
