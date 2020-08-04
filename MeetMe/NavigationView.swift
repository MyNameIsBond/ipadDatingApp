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


struct profileView: View {
    var body: some View {
        Text("settingsView")
    }
}


struct defaultView: View {
    var body: some View {
        Text("default")
    }
}


struct findAMatchView: View {
    var body: some View {
        Text("find A Match View")
    }
}


func destionation (dest: String) -> AnyView {
    switch dest {
    case "messagesView": return AnyView(messagesView())
    case "findAMatchView": return AnyView(findAMatchView())
    case "profileView": return AnyView(profileView())
    default: return AnyView(defaultView())
    }
}


struct ContentView: View {
    var Menu = menu
    
    var body: some View {
//        #if os(iOS)
//        iPhoneTabView
//        #else
        iPadOSTabView
//        #endif
    }
    
    var iPhoneTabView: some View {
        TabView() {
            ForEach(Menu) { m in
                destionation (dest: m.destination).tabItem {
                    Label(m.name, systemImage: m.icon)
                }.tag(m.id)
            }
        }
    }
    
    var iPadOSTabView: some View {
        NavigationView {
        List(Menu) { m in
            NavigationLink(destination: destionation(dest: m.destination)) {
                Label(m.name, systemImage: m.icon)
            }.tag(m.id)
            }.listStyle(SidebarListStyle())
        .navigationTitle("Meet Me")
        .navigationBarItems(trailing: Image("user1").imgAvatar(width: 25, height: 25))
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
