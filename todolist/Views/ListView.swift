//
//  ListView.swift
//  todolist
//
//  Created by Aaron on 2021/10/23.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "First", isCompleted: false),
        ItemModel(title: "Second", isCompleted: true),
        ItemModel(title: "Third", isCompleted: false),
    ]
    
    var body: some View {
        List {
            ForEach(items) {
                item in ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Aaron's Todo List 🥲")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink(
                    "Add", destination: AddView()
                )
        )
    }
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


