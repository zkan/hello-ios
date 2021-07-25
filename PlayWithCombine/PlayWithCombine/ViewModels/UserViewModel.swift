//
//  UserViewModel.swift
//  PlayWithCombine
//
//  Created by Kan Ouivirach on 25/7/2564 BE.
//

import Foundation

class UserViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var passwordAgain: String = ""
    
    @Published var isValid = false
}
