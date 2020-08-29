//
//  messagesView.swift
//  MeetMe
//
//  Created by Tony Hajdini on 04/08/2020.
//

import SwiftUI


                

struct findAMatchView: View {
   
    var body: some View {
           Text("Find a Match View")
    }
}



struct messagesView: View {
    var messages = messageM
    var body: some View {
        List(messages) { m in
                NavigationLink(destination: ChatView(message: m.messages)) {
                    Image(systemName:"circlebadge.fill").opacity(m.read ? 0 : 1.0).foregroundColor(Color.accentColor)
                    Image(m.icon).imgAvatar(width: 60, height: 60)
                    VStack(alignment: .leading) {
                        HStack {
                            Text(m.name)
                                .fontWeight(.medium)
                                Spacer()
                            Text(m.messages[0].time)
                                .timeText()
                        }
                        Text(m.messages[0].message)
                            .primaryText()
                    }
                }
                .listDesign(image: "user15", title: "Messages")
        }
    }
}


struct messagesView_Previews: PreviewProvider {
    static var previews: some View {
        messagesView()
    }
}
