//
//  CarDetailView.swift
//  Cars
//
//  Created by student on 14/01/2026.
//

import SwiftUI

struct CarDetailView: View {
    @Environment(DataManager.self) private var dataManager
    var car: Car
    @State private var isFavorite = false
    var body: some View {
        VStack {
            Text(car.brand)
            Text(car.model)
            Text("\(car.year)")
            Toggle("Favorite", isOn: $isFavorite)
                .onChange(of: isFavorite) {
                                dataManager.setFavorite(car, isFavorite: isFavorite)
                            }
            NavigationLink(destination: FilterView()) {
                            Text("Go to Filter")
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
            
        }
    }
}


