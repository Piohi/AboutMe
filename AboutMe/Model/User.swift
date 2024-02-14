//
//  User.swift
//  AboutMe
//
//  Created by Anton Godunov on 13.02.2024.
//

struct User {
    
    let userName: String
    let password: String
    
    static let exexample = User(userName: "Alex", password: "Alex")
    
    func authorization(
        introducedUser: String,
        introducedPassword: String
    ) -> Bool {
        if userName == introducedUser,
           password == introducedPassword {
            return true
        } else {
            return false
        }
    }
}
