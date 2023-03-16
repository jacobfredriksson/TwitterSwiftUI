//
//  TwitterSwiftUIApp.swift
//  TwitterSwiftUI
//
//  Created by Jacob Fredriksson on 2023-03-06.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUIApp: App {
    
    @StateObject var viewModel = AuthViewModel()

    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
        
            }
            .environmentObject(viewModel)
        }
    }
}
