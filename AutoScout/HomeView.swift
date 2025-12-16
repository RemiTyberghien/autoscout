//
//  HomeView.swift
//  AutoScout
//
//  Created by Remi.Tyberghien on 16/12/2025.
//

import SwiftUI

struct HomeView: View {
    @Environment(DataManager.self) var datamanager
    var body: some View {
        VStack{
            List(datamanager.getAllCars(), id : \.self){ car in
                VStack{
                    Image(systemName: "car.fill")
                    Text(car.brand)
                    Text(car.model)
                    Divider()
                }
                
            }
        }
    }
}

#Preview {
    HomeView()
}
