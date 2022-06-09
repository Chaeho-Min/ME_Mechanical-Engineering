//
//  DetailView.swift
//  ME
//
//  Created by 민채호 on 2022/05/30.
//

import SwiftUI

struct DetailView: View {
    let mechanic: Mechanics
    @State private var text: String = ""
    
    var body: some View {
        ZStack {
            Color.primaryBG.ignoresSafeArea() // 배경색
            
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(mechanic.chapters) { chapter in
                        definitionLabel(chapter: chapter)
                    }
                }
            }
            .overlay {
                if !text.isEmpty {
                    SearchResults(text: $text, chapters: mechanic.chapters)
                }
            }
        }
        .navigationTitle(mechanic.title)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
        .searchable(text: $text, placement: .navigationBarDrawer(displayMode: .always))
        .disableAutocorrection(true)
        .textInputAutocapitalization(.never)
    }
}

// MARK: - Definition Views

extension DetailView {
    
    @ViewBuilder
    func definitionLabel(chapter: Chapter) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(chapter.title)
                .font(.title3)
                .fontWeight(.bold)
            HStack {
                Text(chapter.description)
                    .foregroundColor(.secondary)
                Spacer(minLength: 0)
            }
        }
        .groupedBG(cornerRadius: 12, color: .secondaryBG)
    }
}

// MARK: - Preview

struct MechanicsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(mechanic: mechanicsData[0])
    }
}
