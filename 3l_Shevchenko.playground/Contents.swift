import UIKit


enum Transmission {
    case manual, auto
}

enum OnOffEngine {
    case on, off
}

enum DoorState {
    case open, closed
}

enum Windows {
    case open, closed
}

struct Car {
    let name: String
    var color: String
    let mp3: Bool
    let transmission: Transmission
    var onOffEngine: OnOffEngine
    var windows: Windows
    var doorState: DoorState
    var year: Int
    var assembly: String
//    var spaceInTrunk: Double
//    var inTheTrunk: Int
  
    init(name: String, color: String, year: Int, mp3: Bool,  assembly: String, transmission: Transmission, onOffEngine: OnOffEngine, windows: Windows, doorState: DoorState) {
        self.name = name
        self.mp3 = mp3
        self.color = color
        self.year = year
        self.assembly = assembly
        self.transmission = transmission
        self.onOffEngine = onOffEngine
        self.windows = windows
        self.doorState = doorState
    }
    init(name: String) {
        self.name = name
        self.color = "blue"
        self.year = 2021
        self.assembly = "England"
        self.transmission = .auto
        self.onOffEngine = .off
        self.windows = .closed
        self.doorState = .closed
        self.mp3 = true
    }
    
    mutating func changeSpaceInTrunk (to value: Double) {
         print("Обьем багажника станет \(value) л")
//     spaceInTrunk = value
}

func printInfo() {
    
    print("==========")
    print("Название модели: \(self.name)")
    print("Цвет модели: \(self.color)")
    print("Страна производитель: \(self.assembly)")
    print("Год выпуска: \(self.year)")
//    print("Обьем багажника: \(self.spaceInTrunk) л")
    
    switch self.transmission {
        case .auto:
            print("Трансмиссия: автомат")
        default:
            print("Трансмиссия: механика")
    }
    
    switch self.onOffEngine {
        case .on:
            print("Двигатель: включен")
        default:
            print("Двигатель: выключен")
    }
    
    switch self.doorState {
        case .open:
            print("Двери: открыты")
        default:
            print("Двери: закрыты")
    }
    
    switch self.windows {
        case .open:
            print("Окна: опущены")
        default:
            print("Окна: подняты")
    }
    
    print("Поддержка Mp3: \(self.mp3 ? "Есть" : "Отсутствует")")
    
}
}



var car1 = Car(name: "Honda", color: "red", year: 1992, mp3: true, assembly: "Japan", transmission: .auto, onOffEngine: .off, windows: .closed, doorState: .open)
car1.printInfo()

var car2 = Car(name: "Aston Martin")
car2.printInfo()












