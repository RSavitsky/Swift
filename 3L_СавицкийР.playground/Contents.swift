//: A UIKit based Playground for presenting user interface
  
enum Engine: String {
    case on = "Заведен"
    case off = "Заглушен"
}
enum actionEngine {
    case start, turnOff
}
enum Windows: String {
    case open = "Открыты"
    case closed = "Закрыты"
}
enum trunk {
    case emptyTrunk(empty: String)
    case hulfTrunk (kg: Double)
    case fullTrunk (full: String)
}
struct lightCar {
    var brand: String
    var yearOfRelease: Int
    var trunkCapacity: trunk
    var engine: Engine
    var windows: Windows
    var trunkLoadState: Double

    mutating func StartEngine(action: Engine){
    switch action {
    case .off:
    print (action.rawValue)
    self.engine = .off
    case .on:
    print (action.rawValue)
    self.engine = .on
    }
}
    func description( ){
    print ("Автомобиль \(brand), \(yearOfRelease) года выпуска. Сейчас двигатель \(engine.rawValue). Кузов \(trunkCapacity)")
}
}
struct truckCar {
    var brand: String
    var yearOfRelease: Int
    var trunkCapacity: trunk
    var engine: Engine
    var windows: Windows
    var trunkLoadState: Double
    
    mutating func actionEng(action: actionEngine){
     switch action {
        case .start:
            self.engine = .off
        case .turnOff:
            self.engine = .on
    }
}
    func printEngine( ){
        print(engine.rawValue)
    }
    func description (){
        print("Автомобиль \(brand), \(yearOfRelease) года выпуска. Сейчас двигатель \(engine.rawValue). Кузов автомобиля \(trunkLoadState).")
    }
}
var carLight1 = lightCar(brand: "Volvo", yearOfRelease: 2016, trunkCapacity: 800, engine: .off, windows: .closed, trunkLoadState: 0)
var carLight2 = lightCar(brand: "Skoda", yearOfRelease: 2014, trunkCapacity: 1200, engine: .off, windows: .closed, trunkLoadState: 5)
var truck1 = truckCar(brand: "Renoult", yearOfRelease: 2010, trunkCapacity: 20000, engine: .on, windows: .open, trunkLoadState: 1000)
var truck2 = truckCar(brand: "Scania", yearOfRelease: 2005, trunkCapacity: 25000, engine: .off, windows: .closed, trunkLoadState: 0)

carLight1.brand
carLight2.yearOfRelease
truck1.description
description.truck2

