//
//  FavoritesView.swift
//  Cars
//
//  Created by student on 14/01/2026.
//

import SwiftUI

struct FavoritesView: View {
    @Environment(DataManager.self) private var dataManager
    var body: some View {
        List(dataManager.favoriteCars) { car in
            NavigationLink(value: car) {
                VStack(alignment: .leading) {
                    Text(car.brand)
                        .font(.headline)
                    Text(car.model)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
            }
        }
    }
}

#Preview {
    FavoritesView()
}
