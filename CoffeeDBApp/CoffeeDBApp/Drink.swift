//
//  Drink.swift
//  CoffeeDBApp
//
//  Created by Kan Ouivirach on 16/7/2564 BE.
//

import SwiftUI

struct Drink: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
}
