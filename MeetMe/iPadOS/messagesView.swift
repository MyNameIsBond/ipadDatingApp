//
//  messagesView.swift
//  MeetMe
//
//  Created by Tony Hajdini on 04/08/2020.
//

import SwiftUI


struct findAMatchView: View {
    var message = [messages]()
    @State private var mess: String = ""
    var body: some View {
            List(message) { m in
                Image("user3").imgAvatar(width: 100, height: 100)
                Text(m.message)
            }.ignoresSafeArea()
        HStack {}.background(Color.accentColor)
        TextField("Message", text:$mess).background(BlurView(style: .light))
    }
}


struct messagesView: View {
    
    var messages = messageM
    var body: some View {
        List(messages) { m in
            NavigationLink(destination: findAMatchView(message: m.messages)) {
                if m.name == "Rafaela" {
                    Image(systemName:"circlebadge.fill").foregroundColor(Color.accentColor)
                } else {
                    Image(systemName:"circlebadge.fill").opacity(0)
                }
            Image(m.icon).imgAvatar(width: 50.0, height: 50.0)
                VStack(alignment: .leading) {
                    Text(m.name)
                        .fontWeight(.medium)
                    Text(m.messages[0].message)
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
