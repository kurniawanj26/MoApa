//
//  ListViewModel.swift
//  MoApa
//
//  Created by Jayadi Kurniawan on 19/06/24.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    // 1
    init() {
        getItems()
    }
    
    // 2
    func getItems() {
        let newItems = [
            ItemModel(title: "Swimming 🏊🏼‍♂️", isCompleted: false),
            ItemModel(title: "Jogging 🏃🏻‍♂️", isCompleted: true),
            ItemModel(title: "Jogging 🏃🏻‍♂️", isCompleted: true),
          ]
        
        // 3
        // Add dummy items to the items  array
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        /*
         if let index = items.firstIndex { (existingItem) -> Bool in
            existingItem.id == item.id
         } {
            
         }
         */
        
        if let index = items.firstIndex(where: { $0.id == item.id}) {
            items[index] = item.updateCompletion()
        }
    }
    
}
