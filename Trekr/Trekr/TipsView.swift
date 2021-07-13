//
//  TipsView.swift
//  Trekr
//
//  Created by Kan Ouivirach on 13/7/2564 BE.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    init() {
        // ! means it definitely finds the locations.json file
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        // If we cannot read the file, the app should crash
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    
    var body: some View {
        // \. -> Swift Keypath
        List(tips, id: \.text, children: \.children) { tip in
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            } else {
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
