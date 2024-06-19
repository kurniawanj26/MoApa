//
//  AddView.swift
//  MoApa
//
//  Created by Jayadi Kurniawan on 19/06/24.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText = ""
    var textFieldBackgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186,
                          alpha: 1)
    var body: some View {
        ScrollView {
            VStack {
                TextField("Mukbang bareng Joni...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(textFieldBackgroundColor))
                    .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }

            }
            .padding(14)
        }
        .navigationTitle("Add ✏️")
        
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
