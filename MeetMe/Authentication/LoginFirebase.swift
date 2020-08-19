//
//  LoginFirebase.swift
//  MeetMe
//
//  Created by Tony Hajdini on 18/08/2020.
//

import SwiftUI



struct LoginFirebase: View {
    var constant = LoginPage()
    @State private var username = ""
    @State private var password = ""
    @State private var isLoading = false
    @State private var isSuccessful = false
    var myBlue = Color(red:108/255, green:158/255, blue:255/255) // doc
    var myPurple = Color(red: 208/255, green: 45/255, blue: 208/255) // doc
    
    var body: some View {
       
        GeometryReader { g in
            VStack {
                HStack {
                    Image("LoginLogo").imgAvatar(width: g.size.width / 2, height: g.size.height / 3)
                }
                VStack(spacing: 20) {
                    VStack {
                        Text(constant.description)
                        Text(constant.description2)
                    }.foregroundColor(Color.white.opacity(0.8))
                    SignInWithAppleButton(
                        .signIn,
                        onRequest: { request in
                            request.requestedScopes = [.fullName, .email]
                        },
                        onCompletion: { result in
                                switch result {
                                case .success(let authResults):
                                    print("Authorization successful:")
                                    print(authResults)
                                case .failure(let error):
                                    print("Authorization failed: " + error.localizedDescription)
                                }
                            }
                        ).frame(width: g.size.width / 1.2, height: 60, alignment: .center).cornerRadius(10)
                    HStack {
                        Button(action: {}) {
                            Spacer()
                            Image("fblogo").imgAvatar(width: 25, height: 25).foregroundColor(Color.white)
                            Text("Sign in with facebook").font(.title3).fontWeight(.semibold).multilineTextAlignment(.leading).padding(.vertical).foregroundColor(Color.white)
                            Spacer()
                        }.background(Color.blue).cornerRadius(10).frame(height: 50)
                    }.frame(width: g.size.width / 1.2 ,height: 60, alignment: .center)
                    HStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text ("Trouble with signing in?").font(.callout).fontWeight(.semibold).foregroundColor(Color.white)
                        })
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
