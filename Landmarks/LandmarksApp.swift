//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by agumy on 2021/05/02.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
