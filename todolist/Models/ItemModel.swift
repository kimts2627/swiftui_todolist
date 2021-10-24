//
//  ItemModel.swift
//  todolist
//
//  Created by Aaron on 2021/10/23.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
