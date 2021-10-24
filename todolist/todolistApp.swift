//
//  todolistApp.swift
//  todolist
//
//  Created by Aaron on 2021/10/23.
//

import SwiftUI

@main
struct todolistApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
