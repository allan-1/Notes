//
//  AddNoteView.swift
//  Notes
//
//  Created by Allan on 3/11/24.
//

import SwiftUI

struct AddNoteView: View {
    
    @EnvironmentObject var router: Router
    
    //note title
    @State private var noteTitle: String = ""
    @FocusState private var noteTitleFocus: Bool
    
    //notes
    @State private var notesText: String = ""
    @FocusState private var notesTextFocus: Bool
    
    @Binding var notesList: [NotesModel]
    
    // State variable to control the presentation of the alert
    @State private var showAlert = false
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .trailing) {
                Button(action: saveNote) {
                    Text("Save").font(.system(size: 20, weight: .heavy))
                }
            }.frame(maxWidth: .infinity, alignment: .trailing)
            Text(Date.now, format: .dateTime.day().month().year()).foregroundStyle(.orange).padding(EdgeInsets(top: 8, leading: 0, bottom: 10, trailing: 0))
            TextField("Note title", text: $noteTitle).focused($noteTitleFocus).font(.system(size: 20, weight: .bold)).padding(EdgeInsets(top: 4, leading: 0, bottom: 16, trailing: 0)).onSubmit {
                noteTitleFocus = false
                notesTextFocus = true
            }.submitLabel(.next)
            TextField("Write down something...", text: $notesText, onCommit: saveNote).focused($notesTextFocus)
            Spacer()
        }
        .padding()
        .navigationTitle("Note")
        .navigationBarTitleDisplayMode(.inline)
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Oops! You forgot something.."), message: Text("Don't forget to add your Note title and Note"))
        }
    }
    
    func saveNote(){
        if noteTitle.isEmpty || notesText.isEmpty {
            showAlert = true
            return
        }
        notesList.append(NotesModel(id: UUID(), title: noteTitle, note: notesText, dateCreated: Date.now))
        router.navigateBack()
    }
}


//#Preview {
//    AddNoteView()
//}
