//
//  ItemModel.swift
//  todolist
//
//  Created by Aaron on 2021/10/23.
//

import Foundation

// Immutable Struct --> 안에 let이 있듯이 변경할 수 없다.
// 메서드 통해서만 update 가능
struct ItemModel: Identifiable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
