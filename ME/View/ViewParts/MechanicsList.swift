//
//  MechanicsList.swift
//  ME
//
//  Created by 민채호 on 2022/05/31.
//

import SwiftUI

struct MechanicsList<Content: View>: View {
    let mechanics: [Mechanics]
    @Binding var text: String
    @ViewBuilder let cells: Content
    @Environment(\.isSearching) private var isSearcing: Bool
    
    var body: some View {
        ZStack {
            Color.primaryBG.ignoresSafeArea()
            
            // MechanicLink
            VStack(spacing: 16) {
                cells
                Spacer()
            }
            .overlay {
                if isSearcing {
                    SearchResults(text: $text, chapters: solidChapters + dynamicsChapters + fluidChapters + thermoChapters)
                }
            }
        }
    }
}

extension MechanicsList {
    
    @ViewBuilder
    func mechanicsLabel(_ mechanics: Mechanics) -> some View {
        HStack {
            Image(systemName: mechanics.systemName)
                .font(.title3)
            Text(mechanics.title)
                .font(.title3)
            Spacer(minLength: 0)
        }
        .groupedBG(cornerRadius: 12, color: .secondaryBG)
    }
}

//struct MechanicsList_Previews: PreviewProvider {
//    static var previews: some View {
//        MechanicsList()
//    }
//}
