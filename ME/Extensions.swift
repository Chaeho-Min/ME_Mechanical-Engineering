//
//  Extensions.swift
//  ME
//
//  Created by 민채호 on 2022/05/30.
//

import SwiftUI

// MARK: - View Modifier

extension View {
    func groupedBG(cornerRadius: CGFloat, color: Color) -> some View {
        self
            .frame(maxWidth: .infinity)
            .padding()
            .background {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .foregroundColor(color)
            }
            .padding(.horizontal)
    }
}

// MARK: - Color

extension Color {
    static let primaryBG = Color("primaryBG")
    static let secondaryBG = Color(UIColor.secondarySystemGroupedBackground)
    static let primaryLabel = Color(UIColor.label)
}
