//
//  SignUpView.swift
//  PlayWithCombine
//
//  Created by Kan Ouivirach on 25/7/2564 BE.
//

import SwiftUI

struct SignUpView: View {
    
    @State var username: String
    @State var password: String
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                SecureField("Password", text: $password)
            }
            Section {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Sign Up")
                })
                .disabled(true)
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(username: "", password: "")
    }
}
