//
//  ContentView.swift
//  MeetMe
//
//  Created by Tony Hajdini on 30/07/2020.
//

import SwiftUI

struct messagesView: View {
    var body: some View {
        Text("messagesView")
    }
}

struct settingsView: View {
    var body: some View {
        Text("messagesView")
    }
}

struct ContentView: View {
    
    var Menu = menu
    
    var body: some View {
        NavigationView {
        List(Menu) { m in
            NavigationLink(destination: m.destination) {
                Label(m.name, systemImage: m.icon)
                }
            }.listStyle(SidebarListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
