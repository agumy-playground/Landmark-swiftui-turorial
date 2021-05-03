//
//  ContentView.swift
//  Landmarks
//
//  Created by agumy on 2021/05/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
