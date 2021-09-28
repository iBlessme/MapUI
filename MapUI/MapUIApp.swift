//
//  MapUIApp.swift
//  MapUI
//
//  Created by Blessme on 24.09.2021.
//

import SwiftUI

@main
struct MapUIApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
