//
//  ListView.swift
//  todolist
//
//  Created by Aaron on 2021/10/23.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "First",
        "Second",
        "Third",
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) {
                item in ListRowView(title: item)
            }
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
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


