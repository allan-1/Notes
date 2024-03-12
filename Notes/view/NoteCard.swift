//
//  NoteCard.swift
//  Notes
//
//  Created by Allan on 3/12/24.
//

import SwiftUI

struct NoteCard: View {
    

    let note: NotesModel
    var body: some View {
        VStack(alignment: .leading){
            Text(note.title).font(.system(size: 20, weight: .bold))
            Text(note.note).padding(EdgeInsets(top: 2, leading: 0, bottom: 16, trailing: 0))
            HStack{
                Text(note.dateCreated, format: .dateTime.day().month().year()).font(.system(size: 14)).foregroundStyle(.orange)
                Spacer()
                Button(action: deleteAction){
                    Image(systemName: "trash.fill").foregroundColor(.red)
                }
            }
        }.padding(EdgeInsets(top: 0, leading: 12, bottom: 12, trailing: 4))
    }
    
    func deleteAction(){

    }
}

#Preview {
    NoteCard(note: NotesModel(id: UUID(), title: "Allan", note: "Allan", dateCreated: Date.now))
}
