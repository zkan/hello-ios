//
//  ContentView.swift
//  Trekr
//
//  Created by Kan Ouivirach on 13/7/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("highlands")
                .resizable()
                .scaledToFit()

            Text("The Amazing Scottish Highlands")
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text("United Kingdom")
                .font(.title)
                .foregroundColor(.secondary)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
