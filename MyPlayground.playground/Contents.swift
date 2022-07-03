import UIKit
protocol HomeworkService {
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int)

    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]

    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int]

    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character]

    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]
}
struct homeWork: HomeworkService {
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int) {
        return (x / y, x % y)
    }
    
    func fibonacci(n: Int) -> [Int] {
        var fib: [Int] = []
        var a: Int = 0
        var b: Int = 1
        for _ in 0..<n {
            let temp: Int = b
            b = a
            a = temp + b
            fib.append(a)
        }
        return fib
    }
    
    func sort(rawArray: [Int]) -> [Int] {
        var newArray: [Int] = rawArray
        for i in 0..<newArray.count {
            for j in 0..<newArray.count-i-1 {
                if newArray[j] > newArray[j+1] {
                    let a: Int = newArray[j+1]
                    newArray[j+1] = newArray[j]
                    newArray[j] = a
                }
            }
        }
        return newArray
    }
    
    func firstLetter(strings: [String]) -> [Character] {
        var charArray: [Character] = Array()
        for str in strings {
            charArray.append(str.first ?? "-")
        }
        return charArray
    }
    
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int] {
        var newArray: [Int] = []
        for i in 0..<array.count {
            if condition(array[i]) {
                newArray.append(array[i])
            }
        }
        return newArray
    }
}

//2 задание
protocol addBook{
    func bookAdd()
}
protocol Visitor{
    func takeBook()
    func readBook()
}
private enum Books{
    case author
    case style
    case length
    case chapters
}
public enum BookStyles{
    case drama
    case science
    case adventure
    case classics
    case fantasy
    case history
    case mystery
    case novel
    case all
    case national
    case forKids
}
var Books_number: Int = 0
public class Library: addBook{
    var adress: String
    var Books_type: BookStyles
    init() {
        adress = ""
        Books_type = .all
    }
    let isOpen: Bool = true
    func bookAdd() {
        Books_number += 1
    }
}
public class LibraryVisitor: Visitor{
    func takeBook() {
        if Books_number > 0{
            print("Book was taken")
            Books_number -= 1
        }
        else {
            print("No books available")
        }
    }
    func readBook() {
        print("Reading...")
        sleep(5)
        print("Book was read")
    }
}
public class ScienceLibrary: Library{
    override init() {
        super.init()
        adress = ""
        Books_type = .science
    }
}
private class NationalLibrary: Library{
    override init() {
        super.init()
        adress = ""
        Books_type = .national
    }
}
public class KidsLibrary: Library{
    override init() {
        super.init()
        adress = ""
        Books_type = .forKids
    }
}
private struct firstVisitor: Visitor{
    var typeOfBook: BookStyles = .adventure
    func readBook() {
        if Books_number > 0{
            Books_number -= 1
            print("reading...")
        }
        else {
            print("There are no more books")
        }
    }
    func takeBook() {
        if Books_number > 0{
            print("Book was taken")
        }
        else {
            print("There are no more books")
        }
    }
}
private struct SecondVisitor: Visitor{
    var typeOfBook: BookStyles = .novel
    func readBook() {
        if Books_number > 0{
            Books_number -= 1
            print("reading...")
        }
        else {
            print("There are no more books")
        }
    }
    func takeBook() {
        if Books_number > 0{
            print("Book was taken")
        }
        else {
            print("There are no more books")
        }
    }
}
private struct ThirdVisitor{
    var typeOfBook: BookStyles = .drama
    func worker(){
        print("I'm a janitor. I'm here to keep the library clean.")
    }
}
