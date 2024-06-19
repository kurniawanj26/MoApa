//
//  ItemModel.swift
//  MoApa
//
//  Created by Jayadi Kurniawan on 19/06/24.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
