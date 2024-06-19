//
//  ListView.swift
//  MoApa
//
//  Created by Jayadi Kurniawan on 19/06/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "Jogging 🏃🏻‍♂️",
        "Jogging 🏃🏻‍♂️",
        "Jogging 🏃🏻‍♂️",
        "Jogging 🏃🏻‍♂️",
    ]
    
    var body: some View {
        List {
            // A custom component
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("MoApa 🤔")
        .navigationBarItems(
            leading:  EditButton(),
            trailing:
                NavigationLink("Add",destination: AddView())
            )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
         NavigationView {
            ListView()
        }
    }
}
