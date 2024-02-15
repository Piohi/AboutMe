//
//  User.swift
//  AboutMe
//
//  Created by Anton Godunov on 13.02.2024.
//

struct User {
    
    let userName: String
    let password: String
    let person: Client
    
    static let exexample = User(userName: "Alex", password: "Alex", person: Client.exexample)
    
    func singIn(
        introducedUser: String,
        introducedPassword: String
    ) -> Bool {
        return userName == introducedUser &&
        password == introducedPassword
    }
}

