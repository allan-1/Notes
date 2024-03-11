//
//  Welcome.swift
//  Notes
//
//  Created by Allan on 3/5/24.
//

import SwiftUI

struct Welcome: View {
    //router
    @EnvironmentObject var router: Router
    
    @State private var name: String = ""
    @FocusState private var emailFieldIsFocused: Bool
    
    var body: some View {
        VStack{
            Image("book-notes").aspectRatio(contentMode: .fit)
            Text("This notes belongs to").font(.system(size: 16, weight: .regular, design: .monospaced)).padding()
            TextField("What's your name?", text: $name).focused($emailFieldIsFocused) .textInputAutocapitalization(.never)
                .disableAutocorrection(true).textFieldStyle(.automatic).padding()
            Button(action: continueToHome){
                Text("Start")
            }.buttonStyle(.borderedProminent).padding()
        }.navigationBarBackButtonHidden(true)
    }
    
    func continueToHome(){
        router.navigate(to: .HomeView, removeLast: true)
    }
}



#Preview {
    Welcome()
}
