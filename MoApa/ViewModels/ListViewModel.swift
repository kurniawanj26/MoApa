//
//  ListViewModel.swift
//  MoApa
//
//  Created by Jayadi Kurniawan on 19/06/24.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = [] {
        // instead of put the saveItems() inside all the CRUD functions
        // we can simply do this magic
        didSet {
            saveItems()
        }
    }
    
    let itemsKey: String = "items_list"
    
    // 1
    init() {
        getItems()
    }
    
    // 2
    func getItems() {
        /*
            let newItems = [
                ItemModel(title: "Swimming 🏊🏼‍♂️", isCompleted: false),
                ItemModel(title: "Jogging 🏃🏻‍♂️", isCompleted: true),
                ItemModel(title: "Jogging 🏃🏻‍♂️", isCompleted: true),
              ]
            
            // Add dummy items to the items  array
            items.append(contentsOf: newItems)
         */
        
        /*
         there is a better way to write this code, see below implementation
         
         guard let data = UserDefaults.standard.data(forKey: itemsKey) else { return }
         guard let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data) else { return }
         */
        
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else { return }
        
        self.items = savedItems
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
        
        // part 3
        if let index = items.firstIndex(where: { $0.id == item.id}) {
            items[index] = item.updateCompletion()
        }
    }
    
    func saveItems() {
        // convert the item array into data
        if let encodedData = try? JSONEncoder().encode(items) {
            // put the data in the UserDefaults
            UserDefaults.standard.setValue(encodedData, forKey: itemsKey)
        }
    }
    
}
