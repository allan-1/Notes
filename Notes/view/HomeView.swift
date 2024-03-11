//
//  HomeView.swift
//  Notes
//
//  Created by Allan on 3/5/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack{
            
        }.navigationTitle("Saved Notes").navigationBarItems(trailing: addNotes)
    }
    
    var addNotes: some View{
        Image(systemName: "plus")
    }
}

#Preview {
    HomeView()
}
