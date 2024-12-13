//
//  VocabularyList.swift
//  SimpleFlashcards
//
//  Created by Jane Madsen on 12/11/24.
//

import Foundation

struct Vocab {
    var word: String
    var definition: String = ""
    var synonyms: [String] = []
    var notes: [String] = []
    var referenceImage: String = ""
    
    static let list: [Vocab] = [
        Vocab(
            word: "constants",
            definition: "A constant is a value that cannot be altered during the execution of a program.",
            synonyms: ["Immutable Value"],
            notes: ["Declared using the 'let' keyword in Swift."],
            referenceImage: "constant"
        ),
        Vocab(
            word: "variables",
            definition: "A variable is a named storage that can hold a value and whose value can be changed during program execution.",
            synonyms: ["Mutable Value"],
            notes: ["Declared using the 'var' keyword in Swift."],
            referenceImage: "variable"
        ),
        Vocab(
            word: "strings",
            definition: "A string is a sequence of characters used to represent text.",
            synonyms: ["Text", "Character Sequence"],
            notes: ["In Swift, strings are declared using double quotes (\" \")."],
            referenceImage: "string"
        ),
        Vocab(
            word: "functions",
            definition: "A function is a reusable block of code that performs a specific task.",
            synonyms: ["Method", "Procedure"],
            notes: ["Defined using the 'func' keyword in Swift."],
            referenceImage: "func"
        ),
        Vocab(
            word: "arrays",
            definition: "An array is a collection of elements stored in a specific order.",
            synonyms: ["List", "Sequence"],
            notes: ["Arrays in Swift are zero-indexed and declared using square brackets []."],
            referenceImage: "array"
        ),
        Vocab(
            word: "methods",
            definition: "A method is a function associated with a specific type, such as a class, struct, or enum.",
            synonyms: ["Member Function"],
            notes: ["Methods are called on instances of a type."],
            referenceImage: "method"
        ),
        Vocab(
            word: "classes",
            definition: "A class is a blueprint for creating objects, providing initial values for properties and implementations of behavior.",
            synonyms: ["Object Blueprint"],
            notes: ["Classes support inheritance and are declared using the 'class' keyword in Swift."],
            referenceImage: "class"
        ),
        Vocab(
            word: "structs",
            definition: "A struct is a value type that encapsulates properties and methods.",
            synonyms: ["Structure", "Value Type"],
            notes: ["Structs in Swift are declared using the 'struct' keyword and are copied when assigned."],
            referenceImage: "struct"
        )
    ]
}
