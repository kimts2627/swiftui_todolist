//
//  ListView.swift
//  todolist
//
//  Created by Aaron on 2021/10/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            ListRowView()
        }
        .navigationTitle("Aaron's Todo List 🥲")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}

struct ListRowView: View {
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text("The first!")
            Spacer()
        }
    }
}
