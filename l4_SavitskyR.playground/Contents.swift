import UIKit



class Chessman{
    enum ChessmanType{
        case king
        case castle
        case queen
        case knight
    }
    enum ChessmanColor {
        case black
        case white
    }
    let type: ChessmanType
    let color: ChessmanColor
    var coordinate: (String, Int)? = nil
    
    init(type: ChessmanType, color: ChessmanColor) {
        self.type = type
        self.color = color
    }
    init(type: ChessmanType, color: ChessmanColor, coordinate: (String, Int)) {
    self.type = type
    self.color = color
        self.setCoordinate(char: coordinate.0, num: coordinate.1)
    }
    
    func setCoordinate(char c: String, num n: Int){
        self.coordinate = (c, n)
    }
    func kill() {
        self.coordinate = nil
    }
}
var king = Chessman(type: .king, color: .black)
king.setCoordinate(char: "D", num: 1)
var queen = Chessman(type: .queen, color: .white, coordinate: ("D", 8))

var link = Chessman.ChessmanType.king

// Далее используем наследование

class someSubClass: Chessman{
    func printChessmanType(){
        print(self.type)
    }
//Переопределение метода
    
    override func setCoordinate(char c: String, num n: Int) {
        self.coordinate = (c, n*2)
        print(self.coordinate!)
    }
}
var knight = someSubClass(type: .knight, color: .white)
knight.printChessmanType()
    
knight.setCoordinate(char: "E", num: 5)


// DEINIT
class superClass{
    init?(isNil: Bool) {
        if isNil == true{
            return nil
        } else{
            print("Экземпляр создан")
        }
    }
    deinit {
        print("Класс деинициализирован")
    }
}
class subClass: superClass {
    deinit {
        print("Подкласс деинициализирован")
    }
}
var obj = subClass(isNil: false)
obj = nil

// Автоматическая система отслеживания:

class Person{
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) инициализируется")
    }
    deinit {
        print("\(name) деинициализирован")
    }
}
var ref1: Person?
var ref2: Person?
var ref3: Person?

ref1 = Person(name: "Алексей Петров")

// Домашняя работа

class Car{
    enum EngineStatus: CustomStringConvertible {
        case on, off
        var description: String{
            switch self{
            case .on: return "Двигатель заведен"
            case .off: return "Двигатель остановлен"
            }
        }
        
    }
    enum WindowsStatus: CustomStringConvertible {
        case opened, closed
        var description: String{
            switch self{
            case .opened: return "Окна открыты"
            case .closed: return "Окна закрыты"
            }
        }
    }
    enum TruckBodyType: CustomStringConvertible {
        case tipper, tank, refrigerator
        var description: String{
            switch self{
            case .tipper: return "Самосвал"
            case .tank: return "Цистерна"
            case .refrigerator: "Холодильная камера"
            }
        }
    }
    enum Action {
        case switch Engine(EngineState)
        case switch Windows(WindowsState)
        case loadCargo(Double)
        case attachTruckBody(TruckBodyType)
        case replaceTtyres
    }
    let brand: String
    let issueYear: Int
    var engine: EngineStatus = .off
    var Windows: WindowsStatus = .closed
    init (brand: String, issueYear: Int){
        self.brand = brand
        self.issueYear = issueYear
    }
    func perform(action: Action){
    }
}
class TrunkCar: Car, CustomStringConvertible {
    static var typeEmoji = "🚛"
    let maxCargoSpace: Double
    var currentCargoSpace: Double = 0
    var body: TruckBodyType?
    
    var description: String{
        let bodyDescription = body? .description ?? "Без прицепа"
        return "\(TrunkCar .typeEmoji)\n Год выпуска: \(issueYear)\n кузов: \(bodyDescription)\n \(currentCargoSpace)/\(maxCargoSpace)\n Состояние: \(engine) | \(Windows)"
        init (brand: String, issueYear: Int, maxCargoSpace: Double, body: TruckBodyType?){
            self .body = body
            self .maxCargoSpace = maxCargoSpace
            super .init (brand: brand, issueYear: issueYear)
        }
        override func perform(action: Action){
            switch action {
            case .switchEngine (let status):
            engine = status
            case .switchWindows(let status):
                Windows = status
            case .loadCargo(let load):
                guard body! = nil else{
                    return
        }
        let expectedLoad = load + currentCargoSpace
                switch expectedLoad {
                case _where expectedLoad > maxCargoSpace:
                    currentCargoSpace = maxCargoSpace
                case _where expectedLoad < 0:
                    currentCargoSpace = 0
                default:
                    currentCargoSpace += load
        }
            case .attachTruckBody(let newBody):
                self .body = newBody
                currentCargoSpace = 0
            default:
                break
                
                class Sport: Car, CustomStringConvertible{
                    var typeEmoji = "🚙"
                    var zeeroToHundredAccelerator: Double = 0.0
                    var topSpeed: Int = 0
                    var description: String{
                        return "\(typeEmoji)"\n \(brand)\n Год выпуска: \(issueYear)\n разгон до 100 км/ч за \(zeeroToHundredAccelerator) c. Максимальная скорость: \(topSpeed) км/ч Состояние: \(engine) | \(Windows)\n"
                        }
                    init (brand: String, issueYear: Int, zeroToHundredAcceleration: Double)
                    self .topSpeed = topSpeed
                    super .init(brand: brand, issueYear: issueYear)
                }
                }
            }
            
        
        
        }
    }
    





    
    
























