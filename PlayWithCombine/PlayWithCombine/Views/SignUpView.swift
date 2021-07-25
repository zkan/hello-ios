//
//  SignUpView.swift
//  PlayWithCombine
//
//  Created by Kan Ouivirach on 25/7/2564 BE.
//

import SwiftUI

struct SignUpView: View {
    
    @ObservedObject private var userViewModel = UserViewModel()
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $userViewModel.username)
                Section {
                    SecureField("Password", text: $userViewModel.password)
                    SecureField("Password Again", text: $userViewModel.passwordAgain)
                }
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
        SignUpView()
    }
}
