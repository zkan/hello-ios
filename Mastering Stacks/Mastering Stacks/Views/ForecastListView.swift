//
//  ForecastListView.swift
//  Mastering Stacks
//
//  Created by Kan Ouivirach on 24/7/2564 BE.
//

import SwiftUI

struct ForecastListView: View {
    var body: some View {
        
        ScrollView(.horizontal) {
            LazyHStack(alignment: .top, spacing: 16) {
                ForEach(ForecastReading.dumpData, id: \.time) { forecast in
                    ForecastView(forecast: forecast)
                }
            }
        }
        
    }
}

struct ForecastListView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastListView()
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
