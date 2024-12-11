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
    
    @State var vocabulary: [Vocab] = vocabularyList
    
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
                    definitionDisplayed = false
                    if displayedWordIndex > 0 {
                        displayedWordIndex -= 1
                    }
                }
                
                Spacer()
                
                Button("Shuffle") {
                    definitionDisplayed = false
                    vocabulary.shuffle()
                }
                
                Spacer()
                
                Button("Next") {
                    if displayedWordIndex < vocabulary.count - 1 {
                        definitionDisplayed = false
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
