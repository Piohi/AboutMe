//
//  Client.swift
//  AboutMe
//
//  Created by Anton Godunov on 13.02.2024.
//


struct Client {
    
    static let exexample = Client(avatar: "avatar", name: "Anton", lastName: "Godunov", company: "RTK IT", departament: "Direction of digital product development", position: "Lead Testing Specialist", bio: "Родился в Гусь-Хрустальном, в москву приехал учиться, после учебы пошел работать по специальности. На текущей работе организовал спортивный клуб по сквошу.")
    
    let avatar: String
    let name: String
    let lastName: String
    let company: String
    let departament: String
    let position: String
    let bio: String
    var wholeName: String {
        get {
            return "\(self.name) \(lastName)"
        }
    }
}
