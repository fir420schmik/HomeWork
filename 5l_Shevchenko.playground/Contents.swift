import UIKit

var greeting = "Hello, playground"
 
enum Doors: String {
    case open = "открыты", closed = "закрыты"
}

enum TypeOfBody: String {
    case coupe = "купе", sedan = "седан", pickup = "пикап"
}

enum TypeOfDrive: String {
    case rear = "задний", front = "передний", awd = "4х4"
}

enum ChangeWindows: String {
    case open = "открыты", closed = "закрыты"
}

enum Spoiler: String {
    case on = "поднят", off = "опущен", denied = "отсутсвует"
}

enum Trunk: String {
    case full = "полный", empty = "пустой"
}

protocol Cars: CustomStringConvertible {

    var name: String { get }
    var year: Int { get }
    var typeOfBody: TypeOfBody { get set }
    var typeOfDrive: TypeOfDrive { get set }
    var changeWindows: ChangeWindows { get set }
    var spoiler: Spoiler { get set }
}


extension Cars {
    func changeWindows (to: ChangeWindows) {
        self.changeWindows
    }
    func typeOfDrive (to: TypeOfDrive) {
        self.typeOfDrive
    }
    func spoiler(to: Spoiler) {
        self.spoiler
    }


var description: String {
    return "Марка: \(name), год выпуска \(year), тип кузова \(typeOfBody), привод \(typeOfDrive.rawValue), состояние окон \(changeWindows.rawValue), состояние спойлера \(spoiler.rawValue)"
    }
}


class SportCar: Cars {
        
    var name: String
    var year: Int
    var typeOfBody: TypeOfBody
    var typeOfDrive: TypeOfDrive
    var changeWindows: ChangeWindows
    var spoiler: Spoiler
    var nO2: Bool
    
    init(name: String, year: Int, typeOfBody: TypeOfBody, typeOfDrive: TypeOfDrive, changeWindows: ChangeWindows, spoiler: Spoiler, nO2: Bool) {
        self.name = name
        self.year = year
        self.typeOfBody = typeOfBody
        self.typeOfDrive = typeOfDrive
        self.changeWindows = changeWindows
        self.spoiler = spoiler
        self.nO2 = nO2
    }
    
    func changeNO2(to NO2: Bool) -> Bool {
        self.nO2
    }
}

class TrunkCar: Cars {
    
    var name: String
    var year: Int
    var typeOfBody: TypeOfBody
    var typeOfDrive: TypeOfDrive
    var changeWindows: ChangeWindows
    var spoiler: Spoiler
    var trunk: Trunk
    
    init(name: String, year: Int, typeOfDody: TypeOfBody, typeOfDrive: TypeOfDrive, changeWindows: ChangeWindows, spoiler: Spoiler, trunk: Trunk) {
        self.name = name
        self.year = year
        self.typeOfBody = typeOfDody
        self.typeOfDrive = typeOfDrive
        self.changeWindows = changeWindows
        self.spoiler = spoiler
        self.trunk = trunk
    }
    
    func changeTrunk(to: Trunk) {
        self.changeTrunk
    }
}

extension SportCar {
    var description: String {
        return "Марка: \(name), год выпуска \(year), тип кузова \(typeOfBody.rawValue), привод \(typeOfDrive.rawValue), состояние окон \(changeWindows.rawValue), состояние спойлера \(spoiler.rawValue)"
    }
}

extension TrunkCar {
    var description: String {
        return "Марка: \(name), год выпуска \(year), тип кузова \(typeOfBody.rawValue), привод \(typeOfDrive.rawValue), состояние окон \(changeWindows.rawValue), состояние спойлера \(spoiler.rawValue), состояние прицепа \(trunk.rawValue)"
    }
}

var Car1 = SportCar(name: "Mazda", year: 1992, typeOfBody: .coupe, typeOfDrive: .front, changeWindows: .open, spoiler: .on, nO2: true)
var Car2 = TrunkCar(name: "Dodge", year: 2020, typeOfDody: .pickup, typeOfDrive: .awd, changeWindows: .closed, spoiler: .denied, trunk: .full)

print(Car1)
print(Car2)
