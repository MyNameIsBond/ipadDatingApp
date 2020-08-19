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
                VStack {
                    SignInWithAppleButton(
                        .signIn,
                        onRequest: { request in
                            request.requestedScopes = [.fullName, .email]
                        },
                        onCompletion: { result in
                                switch result {
                                case .success(let authResults):
                                    print("Authorization successful.")
                                case .failure(let error):
                                    print("Authorization failed: " + error.localizedDescription)
                                }
                            }
                    ).frame(height: 50).cornerRadius(10)
                    
                    HStack {
                        Button(action: {}) {
                            Spacer()
                            Text("Login with").fontWeight(.semibold).padding().foregroundColor(Color.white)
                            Spacer()
                        }.background(Color.black).cornerRadius(10).frame(height: 50)
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
