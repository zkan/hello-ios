//
//  WorldView.swift
//  Trekr
//
//  Created by Kan Ouivirach on 13/7/2564 BE.
//

import MapKit
import SwiftUI

struct WorldView: View {
    // SwiftUI to control the state and keep it alive
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    
    var body: some View {
        // $ means 2-way binding
        Map(coordinateRegion: $region)
            .navigationTitle("Locations")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
