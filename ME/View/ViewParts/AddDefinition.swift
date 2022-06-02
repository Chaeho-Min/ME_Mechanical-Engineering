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
    @State private var mechanicTitle: String = mechanicsData[0].title
    
    var body: some View {
        ZStack {
            Color.primaryBG.ignoresSafeArea()
            
            VStack {
                navigationBar
                VStack {
                    TextField("Title", text: $title)
                        .font(.headline)
                        .disableAutocorrection(true)
                    TextField("Description", text: $description)
                        .disableAutocorrection(true)
                    Divider()
                    HStack {
                        Text("Mechanics")
                            .font(.headline)
                        Spacer()
                        Picker("Choose Mechanics", selection: $mechanicTitle) {
                            ForEach(mechanicsData) { mechanics in
                                HStack {
                                    Image(systemName: mechanics.systemName)
                                    Text(mechanics.title)
                                }
                            }
                        }
                    }
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
