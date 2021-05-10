import UIKit

// 1. Решить квадратное уравнение:

let a: Double = 2
let b: Double = 5
let c: Double = 3
var x1: Double
var x2: Double
var x: Double
var D: Double
D = b * b -  4 * a * c
if D > 0 {
    D = sqrt(D)
    x1 = (-b + D) / (2 * a)
    x2 = (-b - D) / (2 * a)
    print("Первый корень равен \(x1)", "второй корень равен \(x2)")
} else if D == 0 {
    x = -b / (2 * a)
    print("Корень равен \(x)")
} else if D < 0 {
    print("корней нет")
}
  
// 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника

let A: Double = 5
let B: Double = 10
let C: Double
var p: Double
var s: Double
C = pow(A, 2) + pow(B, 2)
print("Гипотенуза равна \(C)")
p = A + B + C
print("Периметр равен \(p)")
s = 1 / 2 * (A * B)
print("Площадь равна \(s)")

// 3. Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет

var Deposit: Int = 10000
var Percent: Int = 5
var Time: Int = 1825
var DaysInYear: Int = 365
var SumPlusPercentsFor5Years: Int
SumPlusPercentsFor5Years = Deposit + (Deposit * Percent * Time) / ( DaysInYear * 100)
//использовалась формула расчета простых процентов https://investor100.ru/formuly-rascheta-procentov-po-vkladu/
print("Сумма вклада через 5 лет с начисленными процентами составит \(SumPlusPercentsFor5Years)")






