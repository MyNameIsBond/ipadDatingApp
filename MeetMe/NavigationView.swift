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
    case "settingsView": return AnyView(settingsView())
    default: return AnyView(defaultView())
    }
    
}


struct ContentView: View {
    var Menu = menu
    
    var body: some View {
        #if os(iOS)
        iPhoneTabView
        #else
        iPadOSTabView
        #endif
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
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
