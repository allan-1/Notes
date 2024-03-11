//
//  Router.swift
//  Notes
//
//  Created by Allan on 3/11/24.
//

import Foundation
import SwiftUI

class Router: ObservableObject{
    
    public enum Destinations: Codable, Hashable{
        case IntroView
        case WelcomeView
        case HomeView
        case AddNotes
    }
    
    @Published var navPath = NavigationPath()
    
      func navigate(to destination: Destinations, removeLast: Bool = false) {
          navPath.append(destination)
      }
      
      func navigateBack() {
          if !navPath.isEmpty {
              navPath.removeLast()
          }
      }
    
    func navigateToRoot(){
        navPath.removeLast(navPath.count)
    }
    
}
