//
//  NotesModel.swift
//  Notes
//
//  Created by Allan on 3/6/24.
//

import Foundation

struct NotesModel: Identifiable, Codable{
    let id: UUID
    let title: String
    let note: String
    let dateCreated: Date
    
    init(id: UUID, title: String, note: String, dateCreated: Date) {
        self.id = id
        self.title = title
        self.note = note
        self.dateCreated = dateCreated
    }
}
