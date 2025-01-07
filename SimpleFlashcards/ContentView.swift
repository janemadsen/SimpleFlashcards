//
//  ContentView.swift
//  SimpleFlashcards
//
//  Created by Jane Madsen on 12/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var displayedWordIndex = 0
    @State var vocabulary: [Vocab] = Vocab.list
    @State var definitionDisplayed = false
    
    var vocab: Vocab {
        vocabulary[displayedWordIndex]
    }

    var body: some View {
        VStack {
            VStack {
                Spacer()
                
                Text(definitionDisplayed ? vocab.definition : vocab.word)
                    .font(.title)
                    .padding()
                    .background {
                        RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                            .fill(.cyan)
                    }
                
                if definitionDisplayed {
                    ScrollView {
                        VStack {
                            if !vocab.referenceImage.isEmpty {
                                Image(vocab.referenceImage)
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                                    .shadow(radius: 7)
                                    .padding()
                            }
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
            }
            .onTapGesture {
                definitionDisplayed.toggle()
            }

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
                    displayedWordIndex = 0
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
