//
//  CarsApp.swift
//  Cars
//
//  Created by student on 14/01/2026.
//

import SwiftUI

@main
struct CarsApp: App {
    let dataManager = DataManager()
    var body: some Scene {
        WindowGroup {
            ContentView().task {
                await dataManager.loadCars()
            }
        }.environment(dataManager)

    }
}
