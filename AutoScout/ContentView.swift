//
//  ContentView.swift
//  AutoScout
//
//  Created by Remi.Tyberghien on 16/12/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                HomeView()
            }

            Tab("Favorieten", systemImage: "star") {
                FavoritesView()
            }
            Tab("Instellingen", systemImage: "gear") {
                SettingsView()
            }
        }    }
}

#Preview {
    ContentView()
}
