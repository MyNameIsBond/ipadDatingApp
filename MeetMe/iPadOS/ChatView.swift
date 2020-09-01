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
            VStack {
                ZStack(alignment: .bottom) {
                    GeometryReader { g in
                        ScrollView {
                            ForEach(message) { m in
                                VStack {
                                    // Message
                                    Text(m.message).background(Color.accentColor)
                                }
                            }.frame(width: g.size.width)
                        }
                    }
                HStack {
                    Button(action: {
                        print("photo")
                    }, label: {
                        Image(systemName: "plus").foregroundColor(Color.accentColor)
                    })
                    TextField("Message",text:$mess).padding(5).overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 2)).background(BlurView(style: .light)).cornerRadius(20)
                    Button(action: {
                        // To Photo Gallery
                    }, label: {
                        Image(systemName: "face.smiling").foregroundColor(Color.accentColor)
                    })
                }.padding(.all).background(BlurView(style: .regular))
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
