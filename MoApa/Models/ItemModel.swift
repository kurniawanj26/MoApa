//
//  ItemModel.swift
//  MoApa
//
//  Created by Jayadi Kurniawan on 19/06/24.
//

import Foundation

// Immutable Struct
// Codable add the abbility to decode and encode the data 
struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
