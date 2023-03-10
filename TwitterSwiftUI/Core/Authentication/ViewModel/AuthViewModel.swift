//
//  AuthViewModel.swift
//  TwitterSwiftUI
//
//  Created by Jacob Fredriksson on 2023-03-09.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User sessions is \(self.userSession)")
    }
    
    func login(withEmail email: String, password: String) {
        print("DEBUG logn with email\(email)")
    }
    
    func register(withEmail email:String, password: String, fullname: String, username: String) {
        print("DEBUG register with email \(email)")
    }
}
