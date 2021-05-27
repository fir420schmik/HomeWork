import UIKit

enum TypeOfBody: String {
    case coupe, sedan, hatchback, pickup}

enum TypeOfDrive: String {
    case rear, front, awd}

enum ChangeDoor: String {
    case open, closed}

enum ChangeWindows: String {
    case open, closed}

enum Spoiler: String {
    case on, off}

enum Trunk: String {
    case full, empty}

class Car {
    
    let brand: String
    let year: Int
    let horsePower: Int
    var typeOfBody = TypeOfBody.self
    var typeOfDrive = TypeOfDrive.self
    var doors = ChangeDoor.self
    var windows = ChangeWindows.self

    init(brand: String,
         year: Int,
         horsePower: Int,
         typeOfBody: TypeOfBody ,
         typeOfDrive: TypeOfDrive,
         doors: ChangeDoor,
         windows: ChangeWindows) {
        
        self.brand = brand
        self.year = year
        self.horsePower = horsePower
        self.typeOfBody
        self.typeOfDrive
        self.doors
        self.windows
    }
    
    func changeDoors (to: ChangeDoor) {}
    func changeWindows (to: ChangeWindows) {}
}

class Supercars: Car {
    
    var spoiler: Spoiler
    
    init(brand: String,
         year: Int,
         horsePower: Int,
         typeOfBody: TypeOfBody,
         typeOfDrive: TypeOfDrive,
         doors: ChangeDoor,
         windows: ChangeWindows,
         spoiler: Spoiler){
        
        self.spoiler = spoiler
        
        super.init(brand: brand,
                   year: year,
                   horsePower: horsePower,
                   typeOfBody: typeOfBody,
                   typeOfDrive: typeOfDrive,
                   doors: doors,
                   windows: windows)
    }
    
    override func changeDoors(to: ChangeDoor) {}
    override func changeWindows(to: ChangeWindows) {}
}

class TrunkCars: Car {
    
    override init(brand: String, year: Int, horsePower: Int, typeOfBody: TypeOfBody, typeOfDrive: TypeOfDrive, doors: ChangeDoor, windows: ChangeWindows) {
        
        super.init(brand: brand, year: year, horsePower: horsePower, typeOfBody: typeOfBody, typeOfDrive: typeOfDrive, doors: doors, windows: windows)
    }
}

var Car1 = Supercars(brand: "Mazda", year: 1992, horsePower: 420, typeOfBody: TypeOfBody.coupe, typeOfDrive: TypeOfDrive.front, doors: .closed, windows: ChangeWindows.closed, spoiler: Spoiler.on)

var Car2 = TrunkCars(brand: "Dodge", year: 1989, horsePower: 300, typeOfBody: TypeOfBody.pickup, typeOfDrive: TypeOfDrive.awd, doors: ChangeDoor.open, windows: ChangeWindows.open)


