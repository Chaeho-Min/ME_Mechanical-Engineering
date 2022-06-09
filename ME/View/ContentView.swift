//
//  ContentView.swift
//  ME
//
//  Created by 민채호 on 2022/05/30.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    @State private var isPresented: Bool = false
    let mechanics: [Mechanics] = mechanicsData
    
    var body: some View {
        
        NavigationView {
            MechanicsList(mechanics: mechanics, text: $text) {
                ForEach(mechanics) { mechanic in
                    mechanicsCell(mechanic)
                }
            }
            .navigationTitle("ME")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                    .sheet(isPresented: $isPresented) {
                        AddDefinition()
                    }
                }
            }
        }
        .searchable(text: $text) {
            if text.isEmpty {
                ForEach(suggestions) { suggestion in
                    suggestionLabel(suggestion)
                        .searchCompletion(suggestion.title)
                }
            }
        }
        .disableAutocorrection(true)
        .textInputAutocapitalization(.never)
    }
}

// MARK: - Mechanics Views

extension ContentView {
    
    @ViewBuilder
    func mechanicsCell(_ mechanic: Mechanics) -> some View {
        NavigationLink {
            DetailView(mechanic: mechanic)
        } label: {
            mechanicsLabel(mechanic)
        }
        .tint(.primaryLabel)
    }
    
    @ViewBuilder
    func mechanicsLabel(_ mechanic: Mechanics) -> some View {
        HStack {
            Image(systemName: mechanic.systemName)
                .font(.title3)
            Text(mechanic.title)
                .font(.title3)
            Spacer(minLength: 0)
        }
        .groupedBG(cornerRadius: 12, color: .secondaryBG)
    }
}

// MARK: - Suggestions Views

extension ContentView {
    
    var suggestionList: some View {
        ForEach(suggestions) { suggestion in
            suggestionLabel(suggestion)
                .searchCompletion(suggestion.title)
        }
    }
    
    @ViewBuilder
    func suggestionLabel(_ suggestion: Chapter) -> some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)
            Text(suggestion.title)
                .foregroundColor(.primaryLabel)
        }
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
        //        ContentView()
        //            .previewDevice("iPad Pro (11-inch) (3rd generation)")
        //            .previewInterfaceOrientation(.landscapeLeft)
        //        ContentView()
        //            .previewDevice("iPad Pro (11-inch) (3rd generation)")
    }
}
