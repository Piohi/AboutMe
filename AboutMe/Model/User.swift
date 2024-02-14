//
//  User.swift
//  AboutMe
//
//  Created by Anton Godunov on 13.02.2024.
//

struct User {
    
    let userName: String
    let password: String
    
    static let exexample: User = .init(userName: "1", password: "1")
    
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
