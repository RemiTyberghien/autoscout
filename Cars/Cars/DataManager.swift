import Foundation
@Observable
class DataManager {
    var cars: [Car] = []
    var favoriteCars: [Car] = []

    
    func setFavorite(_ car: Car, isFavorite: Bool) {
            if isFavorite {
                if !favoriteCars.contains(car) {
                    favoriteCars.append(car)
                }
            } else {
                favoriteCars.removeAll { $0 == car }
            }
            print("Favorites now:", favoriteCars.map { $0.brand })
        }
    
    
    
    
    
    func loadCars() async {
       
        
        do {
            print("⏳ Loading car data...")
            try await Task.sleep(for: .seconds(1))
            
            let data : CarsResponse = load("cars.json")
            cars  = data.cars
            print("✅ Data loaded successfully.")
        } catch {
            print("❌ Failed to load cars:", error)
        }
        
        
    }
    
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
struct CarsResponse: Codable {
    let cars: [Car]
}
