import UIKit

//Пактическое задание 1

var drob1 = 0.5

var drob2 = 1

var result = drob1 + Double(drob2)

//Практическое задание 2

var number: Int = 123456

var tmpString = " "

let firstSimbol: Character = String(number).first!

let lastSimbol: Character = String(number).last!

tmpString = String(number)

tmpString.removeLast()

tmpString.removeFirst()

String(lastSimbol) + tmpString + String(firstSimbol)

//Решение квадратного уравнения 8X*X + 2X - 3 = 0
let a: Double = 8
let b: Double = 2
let c: Double = -3

let X1: Double
let X2: Double
let D: Double = b * b - 4 * a * c

if (D > 0){
    X1 = (-b + sqrt(D)) / (2 * a)
    X2 = (b + sqrt(D)) / (2 * a)
print("Уравнение имеет два корня: х1 = \(X1), x2 = \(X2)")
} else if (D == 0){
    X1 = -b / (2 * a)
print("Уравнение имеет один корень: х1 = \(X1)")
} else {
    print("Уравнение не имеет корней")
}

//Найти площадь, периметр и гипотенузу прямоугольного треугольника с катетатми 5 и 12
let leg1: Double = 5
let leg2: Double = 12

var hypotenuse = sqrt(leg1 * leg1 + leg2 * leg2)
hypotenuse = Double(round(hypotenuse))

let perimeter = leg1 + leg2 + hypotenuse

let square = (leg1 + leg2) / 2

print("При катетах \(leg1)  и  \(leg2), гипотенуза равна \(hypotenuse), периметр прямоугольного треугольника равен \(perimeter), площадь равна \(square) квадратных единиц")

// Расчитать накопленный процент по вкладу за 5 лет

var deposit: Double = 100
var interest: Double = 6.5

deposit = deposit + (deposit / 100 * interest)
var d1 = deposit
deposit += (deposit / 100 * interest)
var d2 = Double(round(deposit * 100) / 100)
deposit += (deposit / 100 * interest)
var d3 = Double(round(deposit * 100) / 100)
deposit += (deposit / 100 * interest)
var d4 = Double(round(deposit * 100) / 100)
deposit += (deposit / 100 * interest)
var d5 = Double(round(deposit * 100) / 100)

print("Сумма вклада с учетом накопленного процента через 1 год составит \(d1), через 2 года составит \(d2), через 3 года составит \(d3), через 4 года составит \(d4), через 5 лет составит \(d5),")





