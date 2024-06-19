//
//  ListRowView.swift
//  MoApa
//
//  Created by Jayadi Kurniawan on 19/06/24.
//

import SwiftUI

struct ListRowView: View {
    
    // Variables
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        // put it here so both the texts and images updated with particular font
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    // dummy data, just for layouting purpose
    static var item1 = ItemModel(title: "Swimming 🏊🏼‍♂️", isCompleted: true)
    static var item2 = ItemModel(title: "Swimming 🏊🏼‍♂️", isCompleted: false)
    
    static var previews: some View {
        Group {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
