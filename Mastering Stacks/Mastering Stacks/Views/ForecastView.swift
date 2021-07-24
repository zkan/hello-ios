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
        VStack {
            Text(forecast.time)
                .font(.system(size: 12, weight: .bold))
            Image(systemName: forecast.symbol)
                .renderingMode(.original)
            Text(forecast.temp.description)
                .font(.system(size: 16, weight: .medium))
        }
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView(forecast: ForecastReading.dumpData.first!)
    }
}
