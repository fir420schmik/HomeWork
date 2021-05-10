import UIKit


// 1. Написать функцию, которая определяет, четное число или нет.

func checkEvenOrOdd(Value: Int) -> () {
    if Value % 2 == 0 {
        print ("Число \(Value) четное")
}  else {
        print("Число \(Value) нечетное")
    }

}

checkEvenOrOdd(Value: 3)
checkEvenOrOdd(Value: 20)
checkEvenOrOdd(Value: 99)


// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func checkRemain(Value: Int) -> () {
    if Value % 3 == 0 {
    print ("Число \(Value) делится на 3 без остатка")
}  else {
    print("Число \(Value) делится на 3 с остатком")
    }
}

checkRemain(Value: 99)
checkRemain(Value: 100)


// 3. Создать возрастающий массив из 100 чисел.

var OneHundredArray: [Int] = []
for i in 1...100 {
    OneHundredArray.append(i)
}
print(OneHundredArray)


// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var DeleteValues = OneHundredArray.filter{$0 % 2 != 0 && $0 % 3 == 0}
print(DeleteValues)

// 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

func fibonacciArray(Value: Int) -> [Int] {
    var fibonacci: [Int] = [0, 1]
    (2...Value).forEach {
        i in fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
    return fibonacci
}
print(fibonacciArray(Value: 50))

// 6. * Заполнить массив из 100 элементов различными простыми числами.

func primeNumbers(arrayPassed: [Int]) -> [Int] {
    var primes: [Int] = []
    var newArr = arrayPassed
    while let newP = newArr.first {
        primes.append(newP)
        newArr = newArr.filter { $0 % newP != 0 }
    }
    return primes
}
print(primeNumbers(arrayPassed: Array(2...100)))



