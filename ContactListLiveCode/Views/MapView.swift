//
//  MapView.swift
//  ContactListLiveCode
//
//  Created by Tom Huynh on 22/7/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    @State private var position: MapCameraPosition = .automatic
    
    var body: some View {
        Map(position: $position) {
            // Optionally, add an annotation at the coordinate
            Marker("Location", coordinate: coordinate)
        }
        .onAppear {
            setCameraPosition(coordinate)
        }
    }
    
    private func setCameraPosition(_ coordinate: CLLocationCoordinate2D) {
        position = .camera(
            MapCamera(centerCoordinate: coordinate, distance: 1000) // Adjust distance as needed
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 10.72953, longitude: 106.694225))
}
