//
//  LoginFirebase.swift
//  MeetMe
//
//  Created by Tony Hajdini on 18/08/2020.
//

import SwiftUI

struct LoginFirebase: View {
    
    @State private var username = ""
    @State private var password = ""
    @State private var isLoading = false
    @State private var isSuccessful = false
    var myBlue = Color(red:108.0, green:158.0, blue:255.0)
    
    var body: some View {
       
        GeometryReader { g in
            VStack {
                VStack(spacing: 70) {
                    HStack {
                        Image(systemName: "person.circle.fill").padding().foregroundColor(.gray)
                        TextField("Username", text: $password).padding()
                    }.cornerRadius(30.0, antialiased: true).shadow(radius: 90)
                    
                    Button(action: {}) {
                        Text("Login").padding()
                    }.buttonStyle(DefaultButtonStyle()).background(Color.red)
                }.padding()
            }.frame(width: g.size.width, height: g.size.height).background(LinearGradient(gradient: Gradient(colors: [.purple, myBlue]), startPoint: .center, endPoint: .topLeading)).ignoresSafeArea(.all)
        }
    }
}

struct LoginFirebase_Previews: PreviewProvider {
    static var previews: some View {
        LoginFirebase()
    }
}
