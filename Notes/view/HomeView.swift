//
//  HomeView.swift
//  Notes
//
//  Created by Allan on 3/5/24.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack{
            
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

#Preview {
    HomeView()
}
