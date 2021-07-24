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
            Text(format(temp: forecast.temp))
                .font(.system(size: 16, weight: .medium))
        }
        .foregroundColor(.white)
    }
    
    private func format(temp: Double) -> String {
        let formatter = MeasurementFormatter()
        formatter.unitOptions = .temperatureWithoutUnit
        
        let tempInDegrees = Measurement(value: temp, unit: UnitTemperature.celsius)
        return formatter.string(from: tempInDegrees)
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
