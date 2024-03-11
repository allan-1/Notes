//
//  AddNoteView.swift
//  Notes
//
//  Created by Allan on 3/11/24.
//

import SwiftUI

struct AddNoteView: View {
    
    //note title
    @State private var noteTitle: String = ""
    @FocusState private var noteTitleFocus: Bool
    
    //notes
    @State private var notesText: String = ""
    @FocusState private var notesTextFocus: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .trailing) {
                Button(action: saveNote) {
                    Text("Save").font(.system(size: 20, weight: .heavy))
                }
            }.frame(maxWidth: .infinity, alignment: .trailing)
            Text(Date.now, format: .dateTime.day().month().year()).foregroundStyle(.orange).padding(EdgeInsets(top: 8, leading: 0, bottom: 10, trailing: 0))
            TextField("Note title", text: $noteTitle).focused($noteTitleFocus).font(.system(size: 20, weight: .bold)).padding(EdgeInsets(top: 4, leading: 0, bottom: 16, trailing: 0))
            TextField("Write down something...", text: $notesText).focused($notesTextFocus)
            Spacer()
        }
        .padding().navigationTitle("Note").navigationBarTitleDisplayMode(.inline)
    }
    
    func saveNote(){
        
    }
}

#Preview {
    AddNoteView()
}
