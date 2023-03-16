//
//  UserService.swift
//  TwitterSwiftUI
//
//  Created by Jacob Fredriksson on 2023-03-15.
//

import Firebase
import FirebaseFirestoreSwift


struct UserService {
    func fetchUser(withUid uid: String, completion: @escaping(User) -> Void){
            Firestore.firestore().collection("users")
                .document(uid)
                .getDocument { snapshot, _ in
                    guard let snapshot = snapshot else { return }
                    guard let user = try? snapshot.data(as: User.self) else { return }
                    completion(user)
                    print("DEBUG: Username is\(user.username)")
                    print("DEBUG: email is\(user.email)")
                }
        }
}

