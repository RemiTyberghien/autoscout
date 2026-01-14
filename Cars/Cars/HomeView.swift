import SwiftUI

struct HomeView: View {
    @Environment(DataManager.self) private var dataManager

    var body: some View {
        NavigationStack {
            List(dataManager.cars) { car in
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
            .navigationDestination(for: Car.self) { car in
                CarDetailView(car: car)
            }
            .navigationTitle("Cars")
        }
    }
}

