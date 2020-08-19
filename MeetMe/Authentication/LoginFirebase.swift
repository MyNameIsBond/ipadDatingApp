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
    var myBlue = Color(red:108/255, green:158/255, blue:255/255) // doc
    var myPurple = Color(red: 208/255, green: 45/255, blue: 208/255) // doc
    
    var body: some View {
       
        GeometryReader { g in
            VStack {
                VStack(spacing: 50) {
                    HStack {
                        Image(systemName: "person.circle.fill").padding()
                        TextField("Username", text: $password).padding()
                    }.background(Color.white).cornerRadius(10)
                    
                    HStack {
                        Image(systemName: "lock.fill").padding()
                        TextField("Username", text: $password).padding()
                    }.cornerRadius(30.0, antialiased: true).shadow(radius: 90).background(Color.white).cornerRadius(10)
                    
                    HStack {
                        Button(action: {}) {
                            Spacer()
                            Text("Login").padding().foregroundColor(Color.white)
                            Spacer()
                        }.background(Color.black).cornerRadius(10)
                        
                    }
                }.padding().frame(width: g.size.width )
            }.frame(width: g.size.width, height: g.size.height).background(LinearGradient(gradient: Gradient(colors: [myPurple, myBlue]), startPoint: .trailing, endPoint: .topLeading))
        }
    }
}

struct LoginFirebase_Previews: PreviewProvider {
    static var previews: some View {
        LoginFirebase()
    }
}
