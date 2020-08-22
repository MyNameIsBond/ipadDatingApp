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
        
            ZStack(alignment: .bottom){
                List(message) { m in
                    VStack {
                        // Message
                        Image("user\(m.id)").imgAvatar(width: 100, height: 100)
                        Text(m.message).background(Color.accentColor)
                        Text("adasda")
                    }
                }
            HStack {
                Button(action: {
                    print("photo")
                }, label: {
                    Image(systemName: "photo").foregroundColor(Color.accentColor)
                })

                TextField("Message",text:$mess)
                Button(action: {
                    print("photo")
                }, label: {
                    Image(systemName: "face.smiling").foregroundColor(Color.accentColor)
                })
                
            }.padding(.all).background(BlurView(style: .regular))
        }
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
                        Image(m.icon).imgAvatar(width: 60, height: 60)
                        VStack(alignment: .leading) {
                            HStack {
                            Text(m.name)
                                .fontWeight(.medium)
                                Spacer()
                                Text(m.messages[0].time)
                                    .font(.footnote)
                                    .foregroundColor(Color.gray)
                            }
                            Text(m.messages[0].message)
                                .secondaryText()
                        }
                    }
                    .navigationBarItems(trailing: Image("user15")
                    .imgAvatar(width: 30, height: 30))
                    .navigationBarTitle("Messages")
                    .listStyle(SidebarListStyle())
            }

    }
}


struct messagesView_Previews: PreviewProvider {
    static var previews: some View {
        messagesView()
    }
}
