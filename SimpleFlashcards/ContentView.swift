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
    @State var definitionDisplayed = false
    
    var vocab: Vocab {
        vocabulary[displayedWordIndex]
    }

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
                ScrollView {
                    VStack {
                        if !vocab.synonyms.isEmpty {
                            // Synonyms Section
                            Text("Synonyms")
                                .font(.headline)
                                .padding(.top)
                            
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
                        }
                        
                        if !vocab.notes.isEmpty {
                            // Notes Section
                            Text("Notes")
                                .font(.headline)
                                .padding(.top)
                            
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
                    .padding(.horizontal)
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
