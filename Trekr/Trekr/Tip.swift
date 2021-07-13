//
//  Tip.swift
//  Trekr
//
//  Created by Kan Ouivirach on 13/7/2564 BE.
//

import Foundation

struct Tip: Decodable {
    let text: String
    
    // It is safe to say this below since array can be empty
    // ? means Optional
    let children: [Tip]?
}
