//
//  NotesStore.swift
//  Notes
//
//  Created by Allan on 3/6/24.
//

import Foundation
import SwiftUI

@MainActor
class NotesStore: ObservableObject{
    @Published var notes: [NotesModel] = []
    
    private static func fileUrl() throws -> URL{
        try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("notes.data")
    }
    
    func load () async throws{
        let note = Task<[NotesModel], Error>{
            let fileUrl = try Self.fileUrl()
            guard let data = try? Data(contentsOf: fileUrl) else {
                return []
            }
            let savedNotes = try JSONDecoder().decode([NotesModel].self, from: data)
            return savedNotes
        }
        let notes = try await note.value
        self.notes = notes
    }
    
    func save(notes: [NotesModel]) async throws{
        let task = Task{
            let data = try JSONEncoder().encode(notes)
            let outfile = try Self.fileUrl()
            try data.write(to: outfile)
        }
        _ = try await task.value
    }
}
