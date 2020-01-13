import UIKit

//Практическое задание.
// Создать массив из 10 элементов.

var testArray: [Int] = []
for i in 1...9{
    testArray.append(i)
}
var arr = testArray
//Сделать все элементы массива четными.

for (index, value) in arr.enumerated(){
    if (value % 2) != 0{
        arr[index] += 1
    }
}
arr
//удалить из массива все нечетные элементы.

for (_, value) in testArray.enumerated(){
    if (value % 2) == 0{
        testArray.remove(at: testArray.firstIndex(of: value)!)
    }
}
testArray

//Урок 2
//Написать функцию, определяющую число на четность.

func evenFunction(evenNumber: Int) -> Int{
    if (evenNumber % 2) <= 0{
        print("Заданное число \(evenNumber) является четным.")
    }
return evenNumber
}
evenFunction(evenNumber: 56)

//Написать функцию, определяющую число кратное 3.

func multiplicity(NumbThree: Int) -> Int{
    if (NumbThree % 3) <= 0{
        print("Выбранное число \(NumbThree) кратное 3")
    }
    return NumbThree
}
multiplicity(NumbThree: 81)

//Создать возрастающий массив из 100 чисел.

var newArray: [Int] = []
for s in 0...99{
    newArray.append(s)
}
newArray

//Удалить из массива все четные числа и все числа не кратные 3

for (_, value) in newArray.enumerated(){
    if (value % 2) != 1{
        newArray.remove(at: newArray.firstIndex(of: value)!)
    }
    else if (value % 3) > 0{
        newArray.remove(at: newArray.firstIndex(of: value)!)
    }
}
newArray

//Создать функцию, добавляющую новые числа Фибоначи в массив из 100 элементов

var FibonachyArray: [Int] = [0, 1, 1, 2, 3]
func addNewFnumber(FIbNumber: Int) -> Int{
    for i in 6...99{
        .append(FIbNumber)
    }
}



//Создать массив из 100 различных простых чисел

