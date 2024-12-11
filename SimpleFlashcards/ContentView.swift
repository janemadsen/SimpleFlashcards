//
//  ContentView.swift
//  SimpleFlashcards
//
//  Created by Jane Madsen on 12/10/24.
//

import SwiftUI

struct Vocab {
    var word: String
    var definition: String
    var synonyms: [String]
    var notes: [String]
}

struct ContentView: View {
    @State var displayedWordIndex = 0
    
    @State var vocabulary: [Vocab] = [
        Vocab(word: "Compiler", definition: "The part of Xcode that converts your code into a language readable by machines", synonyms: ["Interpeter - Related but not the same"], notes: ["Xcode is not a compiler but it does have one."]),
        Vocab(word: "IDE", definition: "Programs such as VScode, Eclipse, and Xcode that help you develop your code", synonyms: [], notes: [])
    ]
    
    var vocab: Vocab {
        vocabulary[displayedWordIndex]
    }
    
    @State var definitionDisplayed = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(definitionDisplayed ? vocab.definition : vocab.word)
                .font(.title)
                .padding()
                .onTapGesture {
                    definitionDisplayed.toggle()
                }
                .background {
                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                        .fill(.cyan)
                }
            
            if definitionDisplayed {
                HStack {
                    VStack {
                        ForEach(vocab.synonyms, id: \.self) { synonym in
                            Text(synonym)
                                .padding()
                                .onTapGesture {
                                    definitionDisplayed.toggle()
                                }
                                .background {
                                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                        .fill(.gray)
                                }
                        }
                        
                        ForEach(vocab.notes, id: \.self) { note in
                            Text(note)
                                .padding()
                                .onTapGesture {
                                    definitionDisplayed.toggle()
                                }
                                .background {
                                    RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                                        .fill(.gray)
                                }
                        }
                    }
                }
            }
            
            Spacer()
            
            HStack {
                Spacer()
                
                Button("Previous") {
                    if displayedWordIndex > 0 {
                        displayedWordIndex -= 1
                    }
                }
                
                Spacer()
                
                Button("Shuffle") {
                    vocabulary.shuffle()
                }
                
                Spacer()
                
                Button("Next") {
                    if displayedWordIndex < vocabulary.count - 1 {
                        displayedWordIndex += 1
                    }
                }
                
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
