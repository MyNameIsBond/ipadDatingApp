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
    menuModel(name: "Find a Match", icon: "suit.heart.fill", destination: "messagesView"),
    menuModel(name: "Messages", icon: "message.fill", destination: "messagesView"),
    menuModel(name: "Settings", icon: "gearshape.2.fill", destination: "settingsView")
]



struct User {
    var name: String
    var pic: String
}

var user = [
    User(name: "Tony", pic: "pic")
]



struct MenuModel_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
