//
//  SearchResults.swift
//  ME
//
//  Created by 민채호 on 2022/05/30.
//

import SwiftUI

struct SearchResults: View {
    @Binding var text: String
    var chapters: [Chapter]
    var filteredData: [Chapter] {
        return chapters.filter { $0.title.localizedCaseInsensitiveContains(text) || $0.description.localizedCaseInsensitiveContains(text) }
    }
    
    var body: some View {
        
        ZStack {
            Color.primaryBG.ignoresSafeArea()
            
            if !text.isEmpty && filteredData.isEmpty {
                noResults
            } else {
                ScrollView {
                    results
                }
                .padding(.top)
            }
        }
    }
}

// MARK: - View Variables

extension SearchResults {
    
    var noResults: some View {
        VStack(spacing: 2) {
            Image(systemName: "magnifyingglass")
                .font(.system(size: 50))
                .foregroundColor(.secondary)
                .padding(.bottom, 6)
            Text("결과 없음")
                .font(.title3)
                .fontWeight(.bold)
            Text("'\(text)'에 대한 결과가 없습니다.")
                .font(.footnote)
                .foregroundColor(.secondary)
        }
    }
    
    var results: some View {
        VStack(spacing: 16) {
            ForEach(filteredData) { chapter in
                searchResultLabel(chapter)
            }
            Spacer()
        }
    }
    
    @ViewBuilder
    func searchResultLabel(_ chapter: Chapter) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(chapter.title)
                .font(.title3)
                .fontWeight(.bold)
            HStack {
                Text(chapter.description)
                    .foregroundColor(.secondary)
                Spacer(minLength: 0)
            }
            Text(chapter.chapter)
                .foregroundColor(Color(UIColor.tertiaryLabel))
        }
        .groupedBG(cornerRadius: 12, color: .secondaryBG)
    }
}

// MARK: - Preview

struct SearchResults_Previews: PreviewProvider {
    @State static var text: String = "Sys"
    
    static var previews: some View {
        SearchResults(text: $text, chapters: solidChapters + dynamicsChapters + fluidChapters + thermoChapters)
    }
}
