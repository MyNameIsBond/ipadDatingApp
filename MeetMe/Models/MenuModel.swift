//
//  MenuModel.swift
//  MeetMe
//
//  Created by Tony Hajdini on 30/07/2020.
//

import SwiftUI

struct menuModel: Identifiable {
    var id = UUID()
    var name: String
    var icon: String
    var destination: String
}

var menu = [
    menuModel(name: "Find a Match", icon: "suit.heart.fill", destination: "findAMatchView"),
    menuModel(name: "Messages", icon: "message.fill", destination: "messagesView"),
    menuModel(name: "Profile", icon: "person.fill", destination: "profileView")
]

struct User {
    var name: String
    var pic: String
}

var user = [
    User(name: "Tony", pic: "pic")
]
