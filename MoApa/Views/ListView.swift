//
//  ListView.swift
//  MoApa
//
//  Created by Jayadi Kurniawan on 19/06/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
      ItemModel(title: "Swimming 🏊🏼‍♂️", isCompleted: false),
      ItemModel(title: "Jogging 🏃🏻‍♂️", isCompleted: true),
      ItemModel(title: "Jogging 🏃🏻‍♂️", isCompleted: true),
    ]
    
    var body: some View {
        List {
            // A custom component
            ForEach(items) { item in
                ListRowView(item: item)
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
