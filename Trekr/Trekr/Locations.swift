//
//  Locations.swift
//  Trekr
//
//  Created by Kan Ouivirach on 13/7/2564 BE.
//

import Foundation

// class is designed to be shared (whereas struct is not)
// SwiftUI will watch this for changes
class Locations: ObservableObject {
    let places: [Location]
    
    var primary: Location {
        places[0]
    }
    
    init() {
        // ! means it definitely finds the locations.json file
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        // If we cannot read the file, the app should crash
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
