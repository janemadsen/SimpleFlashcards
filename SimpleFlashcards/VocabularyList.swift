//
//  VocabularyList.swift
//  SimpleFlashcards
//
//  Created by Jane Madsen on 12/11/24.
//

import Foundation

let vocabularyList = [
    Vocab(word: "IDE",
          definition: "An Integrated Development Environment is a software application that provides comprehensive facilities to computer programmers for software development.",
          synonyms: ["Code Editor"],
          notes: ["Examples include Xcode, Visual Studio Code, and Eclipse."]
    ),
    Vocab(word: "Compiler",
          definition: "A program that translates source code written in a programming language into machine code that can be executed by a computer's processor.",
          synonyms: ["Translator"],
          notes: ["Commonly part of an IDE or used as a standalone tool."]
    ),
    Vocab(word: "Interpreter",
          definition: "A program that executes instructions written in a programming language without requiring them to be compiled into machine code.",
          synonyms: [],
          notes: ["Used in languages like Python and JavaScript."]
    ),
    Vocab(word: "Syntax",
          definition: "The set of rules that defines the combinations of symbols that are considered to be correctly structured programs in a language.",
          synonyms: ["Grammar"],
          notes: ["Errors in syntax are known as syntax errors."]
    ),
    Vocab(word: "Value Type",
          definition: "A type that is copied when assigned to a variable or constant, or when passed to a function.",
          synonyms: [],
          notes: ["Examples include Int, Float, and Structs in Swift."]
    ),
    Vocab(word: "Reference Type",
          definition: "A type where instances share a single copy of the data, and changes to one instance affect all others.",
          synonyms: [],
          notes: ["Classes in Swift are reference types."]
    ),
    Vocab(word: "Pointer",
          definition: "A variable that stores the memory address of another variable.",
          synonyms: [],
          notes: ["Used extensively in languages like C and C++."]
    ),
    Vocab(word: "Runtime",
          definition: "The period during which a program is running, as opposed to compile time.",
          synonyms: [],
          notes: ["Errors that occur during runtime are called runtime errors."]
    ),
    Vocab(word: "Type Safe",
          definition: "A programming language feature that ensures that variables are only assigned values of a compatible type.",
          synonyms: [],
          notes: ["Swift is a type-safe language."]
    ),
    Vocab(word: "Build",
          definition: "The process of converting source code into a standalone form that can be run on a computer.",
          synonyms: [],
          notes: ["A build may include compilation, linking, and packaging steps."]
    ),
    Vocab(word: "Literal",
          definition: "A fixed value in source code, such as a number, string, or boolean.",
          synonyms: [],
          notes: ["Examples: 42, \"Hello, World!\", true."]
    ),
    Vocab(word: "Interpolation",
          definition: "The process of inserting values of variables or expressions into strings.",
          synonyms: [],
          notes: ["In Swift, this is done using \\(variable)."]
    ),
    Vocab(word: "Object-Oriented",
          definition: "A programming paradigm based on the concept of objects, which contain data and methods.",
          synonyms: [],
          notes: ["Swift supports object-oriented programming."]
    ),
    Vocab(word: "Model",
          definition: "A representation of data or logic that defines the structure and behavior of a system.",
          synonyms: [],
          notes: ["Used in design patterns like MVC."]
    ),
    Vocab(word: "Conditional",
          definition: "A programming statement that performs different actions based on whether a condition evaluates to true or false.",
          synonyms: ["If Statement"],
          notes: ["Common forms include if, else if, else."]
    ),
    Vocab(word: "Control Flow",
          definition: "The order in which individual statements, instructions, or function calls are executed or evaluated.",
          synonyms: [],
          notes: ["Includes loops, conditionals, and function calls."]
    ),
    Vocab(word: "Nested",
          definition: "An element placed inside another element, such as loops or conditionals.",
          synonyms: [],
          notes: ["Nested structures can increase complexity."]
    ),
    Vocab(word: "Iteration",
          definition: "The repetition of a process in a program, typically using loops.",
          synonyms: ["Looping"],
          notes: ["Common constructs include for, while, and repeat-while."]
    ),
    Vocab(word: "Command Line Interface",
          definition: "A text-based user interface used to interact with software and operating systems.",
          synonyms: ["CLI"],
          notes: ["Examples include Terminal on macOS and Command Prompt on Windows."]
    ),
    Vocab(word: "Distributed Version Control System",
          definition: "A system that allows multiple developers to work on a project simultaneously and maintains a history of changes.",
          synonyms: ["DVCS"],
          notes: ["Examples include Git and Mercurial."]
    ),
    Vocab(word: "Function Signature",
          definition: "The declaration of a function that specifies its name, return type, and parameters.",
          synonyms: [],
          notes: ["It does not include the function's implementation."]
    ),
    Vocab(word: "Parameter",
          definition: "A variable used in a function to receive input values when the function is called.",
          synonyms: ["Argument (used during function calls)"],
          notes: ["Swift allows default values for parameters."]
    ),
    Vocab(word: "GUI",
          definition: "Graphical User Interface is a visual way of interacting with a computer using items such as windows, icons, and menus.",
          synonyms: ["User Interface"],
          notes: ["SwiftUI is a framework for building GUIs in Swift."]
    ),
    Vocab(word: "Property",
          definition: "A variable or constant that belongs to a class, struct, or enum and is used to store data.",
          synonyms: [],
          notes: ["Properties can be computed or stored."]
    ),
    Vocab(word: "Method",
          definition: "A function that is defined within a class, struct, or enum.",
          synonyms: ["Member Function"],
          notes: ["Methods can be instance or static."]
    ),
    Vocab(word: "Call",
          definition: "The act of invoking a function or method.",
          synonyms: [],
          notes: ["Calls may pass arguments to functions."]
    ),
    Vocab(word: "Scope",
          definition: "The context in which a variable or function is accessible.",
          synonyms: [],
          notes: ["Examples include local, global, and lexical scope."]
    ),
    Vocab(word: "Mutating",
          definition: "A keyword in Swift that indicates a method modifies the instance it belongs to.",
          synonyms: [],
          notes: ["Only used with structs and enums."]
    ),
    Vocab(word: "Overloading",
          definition: "The ability to define multiple functions with the same name but different parameters or return types.",
          synonyms: [],
          notes: ["Common in Swift for improving code readability."]
    ),
    Vocab(word: "Tuple",
          definition: "A group of values combined into a single compound value.",
          synonyms: [],
          notes: ["Tuples can have named or unnamed elements."]
    )
]

