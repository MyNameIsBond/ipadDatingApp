//
//  ChatView.swift
//  MeetMe
//
//  Created by Tony Hajdini on 27/08/2020.
//

import SwiftUI

struct ChatView: View {
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

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
