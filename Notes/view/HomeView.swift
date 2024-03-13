//
//  HomeView.swift
//  Notes
//
//  Created by Allan on 3/5/24.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var router: Router
    
    @Binding var notesList: [NotesModel]

    
    var body: some View {
        VStack{
            List($notesList) {
                $notelist in NoteCard(note: notelist){
                    notesList.removeAll(where: {$0.id == notelist.id})
                }
            }
        }.navigationTitle("Saved Notes").navigationBarTitleDisplayMode(.large).navigationBarItems(trailing: addNotes).navigationBarBackButtonHidden(true)
    }
    
    var addNotes: some View{
        Button(action: navigateAddNotes){
            Image(systemName: "plus")
        }
    }
    
    func navigateAddNotes(){
        router.navigate(to: .AddNotes, removeLast: false)
    }
}

//#Preview {
//    HomeView()
//}
