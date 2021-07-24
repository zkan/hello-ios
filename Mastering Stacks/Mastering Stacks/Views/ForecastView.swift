//
//  ForecastView.swift
//  Mastering Stacks
//
//  Created by Kan Ouivirach on 24/7/2564 BE.
//

import SwiftUI

struct ForecastView: View {
    
    let forecast: ForecastReading
    
    var body: some View {
        VStack(spacing: 12.0) {
            Text(forecast.time)
                .font(.system(size: 12, weight: .bold))
            Image(systemName: forecast.symbol)
                .renderingMode(.original)
            Text(forecast.temp.description)
                .font(.system(size: 16, weight: .medium))
        }
        .foregroundColor(.white)
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView(forecast: ForecastReading.dumpData.first!)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.black)
    }
}
