import SwiftUI

struct FilterView: View {
    @Environment(DataManager.self) private var dataManager

    let fuels = ["Alle", "Benzine", "Elektrisch"]
    @State private var selectedFuel = "Alle"

    // Gefilterde auto's
    var filteredCars: [Car] {
        if selectedFuel == "Alle" {
            return dataManager.cars
        } else {
            return dataManager.cars.filter { $0.fuelType == selectedFuel }
        }
    }

    var body: some View {
        VStack {
            // Picker
            Picker("Fuel", selection: $selectedFuel) {
                ForEach(fuels, id: \.self) { fuel in
                    Text(fuel)
                }
            }
            .pickerStyle(.segmented)
            .padding()

            // Lijst met auto's
            List(filteredCars) { car in
                VStack(alignment: .leading) {
                    Text(car.brand)
                        .font(.headline)
                    Text(car.model)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
            }
        }
        .navigationTitle("Filter Cars")
    }
}

