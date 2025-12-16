//
//  AutoScoutApp.swift
//  AutoScout
//
//  Created by Remi.Tyberghien on 16/12/2025.
//

import SwiftUI

@main
struct AutoScoutApp: App {
    @State private var Datamanager = DataManager()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(Datamanager).task {
                await Datamanager.loadCars()
            }
        }
    }
}
