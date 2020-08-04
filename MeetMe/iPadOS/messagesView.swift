//
//  messagesView.swift
//  MeetMe
//
//  Created by Tony Hajdini on 04/08/2020.
//

import SwiftUI

struct messagesView: View {
    
    var messages = messageM
    var body: some View {
        List(messages) { m in
            NavigationLink(destination: findAMatchView()) {
                if m.name == "Rafaela" {
                    Image(systemName:"circlebadge.fill").foregroundColor(Color.accentColor)
                } else {
                    Image(systemName:"circlebadge.fill").opacity(0)
                }
            Image(m.icon).imgAvatar(width: 50.0, height: 50.0)
                VStack(alignment: .leading) {
                    Text(m.name)
                        .fontWeight(.medium)
                    Text("Hey there")
                        .font(.subheadline)
                        .fontWeight(.light)
                        .lineLimit(1)
                }
            }
        }.listStyle(SidebarListStyle())
    }
}

struct messagesView_Previews: PreviewProvider {
    static var previews: some View {
        messagesView()
    }
}
