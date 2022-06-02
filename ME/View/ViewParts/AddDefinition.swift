//
//  AddDefinition.swift
//  ME
//
//  Created by 민채호 on 2022/06/02.
//

import SwiftUI

struct AddDefinition: View {
    @Environment(\.dismiss) var dismiss
    @State private var title: String = ""
    @State private var description: String = ""
    
    var body: some View {
        ZStack {
            Color.primaryBG.ignoresSafeArea()
            
            VStack {
                navigationBar
                VStack {
                    TextField("Title", text: $title)
                    TextField("Description", text: $description)
                }
                .groupedBG(cornerRadius: 12, color: .secondaryBG)
                .padding(.vertical)
                Spacer()
            }
        }
    }
}

extension AddDefinition {
    
    var navigationBar: some View {
        HStack {
            Button("Cancel") {
                dismiss()
            }
            .padding()
            Spacer()
            Button("Add") {
                
            }
            .padding()
        }
    }
}

struct AddDefinition_Previews: PreviewProvider {
    static var previews: some View {
        AddDefinition()
    }
}
