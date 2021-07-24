//
//  HourlyForecastView.swift
//  Mastering Stacks
//
//  Created by Kan Ouivirach on 24/7/2564 BE.
//

import SwiftUI

struct HourlyForecastView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "clock")
                Text("Hourly Forecast".uppercased())
                Spacer()
            }
            .font(.system(size: 12, weight: .light))
            .foregroundColor(.white)
            ForecastListView()
        }
        .padding()
        .background(Color.blue.opacity(0.75))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct HourlyForecastView_Previews: PreviewProvider {
    static var previews: some View {
        HourlyForecastView()
    }
}
