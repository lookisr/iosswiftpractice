import UIKit
class Homework {
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int){
        return (x / y, x % y)
    }
    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]{
        var fibonacciArray = [Int]()
        for n in 0 ... n {
            if n == 0 {
                fibonacciArray.append(0)
            }
            else if n == 1 {
                fibonacciArray.append(1)
            }
            else {
                fibonacciArray.append (fibonacciArray[n-1] + fibonacciArray[n-2] )
            }
        }
            return fibonacciArray
        }
    }

    // Функция должна выполнить сортировку пузырьком.
    func sort(_ rawArray: [Int]) -> [Int] {
        var dataSet = rawArray
        let last_position = dataSet.count - 1
        var swap = true
        while swap == true {
            swap = false
            for i in 0..<last_position {
                if dataSet[i] > dataSet[i + 1] {
                    let temp = dataSet [i + 1]
                    dataSet [i + 1] = dataSet[i]
                    dataSet[i] = temp

                    swap = true
                }
            }
        }
        return dataSet
    }

    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character]{
        let range: (Int) = strings.count
        var result = [Character]()
        for i in 0...range{
            let word: String = strings[i]
            let ch: Character = word.first!
            result.append(ch)
        }
        return result
    }



    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]{
        let range = array.count
        var new_array = [Int]()
        for i in 0...range{
            if condition(array[i]){
                new_array.append(array[i])
            }
        }
        return new_array
    }

