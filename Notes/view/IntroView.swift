//
//  IntroView.swift
//  Notes
//
//  Created by Allan on 2/24/24.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        VStack{
            Image("notes").resizable().aspectRatio(contentMode: .fit).padding()
            Text("Don't user your paper again.")
                .font(.system(size: 20, weight: .heavy, design: .default)).padding()
            Text("Organize your notes beautifically").font(.system(size: 16, weight: .regular, design: .monospaced)).padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
            Button(action: nextPage){
                Text("Continue")
            }.buttonStyle(.borderedProminent)
        }
    }
}

func nextPage(){
    
}

#Preview {
    IntroView()
}
