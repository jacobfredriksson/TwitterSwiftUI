//
//  User.swift
//  TwitterSwiftUI
//
//  Created by Jacob Fredriksson on 2023-03-15.
//

import FirebaseFirestoreSwift


struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String 
    let profileImageUrl: String
    let email: String
}
