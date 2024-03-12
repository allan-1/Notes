//
//  NotesApp.swift
//  Notes
//
//  Created by Allan on 2/24/24.
//

import SwiftUI

@main
struct NotesApp: App {
    
    @ObservedObject var router = Router()
    @StateObject private var store = NotesStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath){
                ContentView().navigationDestination(for: Router.Destinations.self){destination in
                    switch destination{
                    case .AddNotes:
                        AddNoteView(notesList: $store.notes)
                    case .HomeView:
                        HomeView(notesList: $store.notes)
                    case .IntroView:
                        IntroView()
                    case .WelcomeView:
                        Welcome()
                    }
                }
            }.environmentObject(router)
            
        }
    }
}
