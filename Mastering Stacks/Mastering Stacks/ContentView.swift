//
//  ContentView.swift
//  Mastering Stacks
//
//  Created by Kan Ouivirach on 24/7/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        List {
            HourlyForecastView()
                .listRowInsets(EdgeInsets())
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
