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
    
    var body: some View {
       
        GeometryReader { g in
            VStack {
                HStack {
                    Image("LoginLogo").imgAvatar(width: g.size.width / 2, height: g.size.height / 3)
                }
                VStack(spacing: 20) {
                    VStack {
                        Text(constant.description)
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
                            Text("Sign in with facebook").font(.title2).fontWeight(.semibold).multilineTextAlignment(.leading).padding(.vertical).foregroundColor(Color.white)
                            Spacer()
                        }.background(Color.blue).cornerRadius(10).frame(height: 50)
                    }.frame(width: g.size.width / 1.2 ,height: 60, alignment: .center)
                    HStack {
                        Button(action: {}, label: {
                            Text ("Trouble with signing in?").font(.callout).fontWeight(.semibold).foregroundColor(Color.white)
                        })
                    }
                }.padding().frame(width: g.size.width)
            }.gradientColour(width: g.size.width, height: g.size.height)
        }
    }
}

struct LoginFirebase_Previews: PreviewProvider {
    static var previews: some View {
        LoginFirebase()
    }
}
