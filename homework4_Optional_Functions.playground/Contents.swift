import UIKit

//Домашнее задание по 4-му занятию - Опционалы и функции

//Optionals

//функция, которая принимает Optional строку и выводит ее на экран, если она не nil
func printIfNotNil(_ text: String?) {
    if let value = text {
        print(value)
    } else {
        print("Значение отсутствует (nil)")
    }
}

let greeting: String? = "Hello, world!"
let emptyString: String? = nil

printIfNotNil(greeting)
printIfNotNil(emptyString)

//функция, которая принимает Optional число и возвращает его удвоенное значение, если оно не nil.
func doubleIfNotNil(_ number: Int?) -> Int? {
    guard let value = number else {
        return nil
    }
    return value * 2
}

let a: Int? = 4
let b: Int? = nil

print(doubleIfNotNil(a) ?? 0)
print(doubleIfNotNil(b) ?? 0)

//функция, которая принимает Optional массив чисел и возвращает его длину, если массив не nil
func arrayLengthIfNotNil(_ numbers: [Int]?) -> Int? {
    guard let array = numbers else {
        return nil
    }
    return array.count
}

let nums1: [Int]? = [1, 2, 3, 4, 5]
let nums2: [Int]? = nil

if let length1 = arrayLengthIfNotNil(nums1) {
    print("Длина массива nums1: \(length1)")
} else {
    print("nums1: nil")
}

if let length2 = arrayLengthIfNotNil(nums2) {
    print("Длина массива nums2: \(length2)")
} else {
    print("nums2: nil")
}

//функция, которая принимает Optional строку и проверяет, содержит ли она определенное подстроку, возвращая true или false.
func containsSubstring(_ text: String?, substring: String) -> Bool {
    guard let value = text else {
        return false
    }
    return value.contains(substring)
}

let str1: String? = "Hello, World!"
let str2: String? = nil

print(containsSubstring(str1, substring: "World"))  //true
print(containsSubstring(str1, substring: "Word"))   //false
print(containsSubstring(str2, substring: "Work"))  //false

//функция, которая принимает Optional число и возвращает его в квадрате, если оно не nil.
func squareIfNotNil(_ number: Int?) -> Int? {
    guard let value = number else {
        return nil
    }
    return value * value
}

let num1: Int? = 5
let num2: Int? = nil

if let squaredNum1 = squareIfNotNil(num1) {
    print("Квадрат числа num1: \(squaredNum1)")  //Выведет: Квадрат числа num1: 25
} else {
    print("num1: nil")
}

if let squaredNum2 = squareIfNotNil(num2) {
    print("Квадрат числа num2: \(squaredNum2)")
} else {
    print("num2: nil")  //Выведет: num2: nil
}

//функция, которая принимает Optional массив строк и выводит каждую строку на новой строке, если массив не nil.
func printStringsIfNotNil(_ strings: [String]?) {
    guard let array = strings else {
        print("Массив: nil")
        return
    }
    
    for str in array {
        print(str)
    }
}

let greetings: [String]? = ["Hello.", "My name is Ryan Gosling.", "I'm QA engineer in WB."]
let emptyArray: [String]? = nil

printStringsIfNotNil(greetings)

printStringsIfNotNil(emptyArray)
// Выведет:
// Массив: nil

//функция, которая принимает Optional строку и возвращает ее длину, если она не nil, и 0 в противном случае.
func lengthOfString(_ text: String?) -> Int {
    guard let value = text else {
        return 0
    }
    return value.count
}

let str_1: String? = "Hello, World!"
let str_2: String? = nil

print(lengthOfString(str1))
print(lengthOfString(str2))

//функция, которая принимает Optional число и проверяет, является ли оно четным, возвращая true или false.
func isEven(_ number: Int?) -> Bool {
    guard let value = number else {
        return false
    }
    return value % 2 == 0
}

let num_1: Int? = 4
let num_2: Int? = 7
let num_3: Int? = nil

print(isEven(num_1)) //true
print(isEven(num_2)) //false
print(isEven(num_3)) //false

//функция, которая принимает Optional массив чисел и возвращает сумму всех элементов массива, если массив не nil.
func sumOfArray(_ numbers: [Int]?) -> Int {
    guard let array = numbers else {
        return 0
    }
    return array.reduce(0, +)
}

// Примеры использования
let nums_1: [Int]? = [1, 2, 3, 4, 5]
let nums_2: [Int]? = nil

print(sumOfArray(nums_1))
print(sumOfArray(nums_2))

//функция, которая принимает Optional число и возвращает true, если оно положительное, и false, если отрицательное или nil
func isPositive(_ number: Int?) -> Bool {
    guard let value = number else {
        return false
    }
    return value > 0
}

let numer1: Int? = 10
let numer2: Int? = -5
let numer3: Int? = nil

print(isPositive(numer1)) // true
print(isPositive(numer2)) // false
print(isPositive(numer3)) // false

//функция, которая принимает Optional строку и возвращает ее в обратном порядке, если она не nil.
func reverseStringIfNotNil(_ text: String?) -> String? {
    guard let value = text else {
        return nil
    }
    return String(value.reversed())
}

let strok1: String? = "Hello, world!"
let strok2: String? = nil

if let reversedStrok1 = reverseStringIfNotNil(strok1) {
    print("Обратная строка strok1: \(reversedStrok1)")
} else {
    print("strok1: nil")
}

if let reversedStrok2 = reverseStringIfNotNil(strok2) {
    print("Обратная строка strok2: \(reversedStrok2)")
} else {
    print("strok2: nil")
}

//функция, которая принимает Optional массив строк и возвращает первую строку, если массив не nil и не пустой
func firstStringIfNotEmpty(_ strings: [String]?) -> String? {
    guard let array = strings, !array.isEmpty else {
        return nil
    }
    return array.first
}

let array1: [String]? = ["Hello", ",", "World!"]
let array2: [String]? = []
let array3: [String]? = nil

if let first1 = firstStringIfNotEmpty(array1) {
    print("Первая строка: \(first1)")
} else {
    print("array1 пустой или nil")
}

if let first2 = firstStringIfNotEmpty(array2) {
    print("Первая строка: \(first2)")
} else {
    print("array2: пустой или nil") // array2 пустой или nil
}

if let first3 = firstStringIfNotEmpty(array3) {
    print("Первая строка: \(first3)")
} else {
    print("array3: пустой или nil") // array3 пустой или nil
}

//функция, которая принимает Optional число и возвращает его квадратный корень, если оно не nil и положительное
func squareRootIfPositive(_ number: Double?) -> Double? {
    guard let value = number, value >= 0 else {
        return nil
    }
    return sqrt(value)
}

let numer_1: Double? = 144.0
let numer_2: Double? = -4.0
let numer_3: Double? = nil

if let root1 = squareRootIfPositive(numer_1) {
    print("Квадратный корень из \(numer_1!): \(root1)") // 3.0
} else {
    print("numer_1 отрицательное или nil")
}

if let root2 = squareRootIfPositive(numer_2) {
    print("Квадратный корень из \(numer_2!): \(root2)")
} else {
    print("numer_2 отрицательное или nil") // numer_2 отрицательное или nil
}

if let root3 = squareRootIfPositive(numer_3) {
    print("Квадратный корень из \(numer_3!): \(root3)")
} else {
    print("numer_3 отрицательное или nil") // numer_3 отрицательное или nil
}

//функция, которая принимает Optional массив чисел и возвращает максимальное значение, если массив не nil и не пустой.
func maxValueIfNotEmpty(_ numbers: [Int]?) -> Int? {
    guard let array = numbers, !array.isEmpty else {
        return nil
    }
    return array.max()
}

let nmrs1: [Int]? = [3, 7, 2, 9, 5]
let nmrs2: [Int]? = []
let nmrs3: [Int]? = nil

if let max1 = maxValueIfNotEmpty(nmrs1) {
    print("Максимальное значение nmrs1: \(max1)") // 9
} else {
    print("nmrs1 пустой или nil")
}

if let max2 = maxValueIfNotEmpty(nmrs2) {
    print("Максимальное значение nmrs2: \(max2)")
} else {
    print("nmrs2 пустой или nil") // nmrs2 пустой или nil
}

if let max3 = maxValueIfNotEmpty(nmrs3) {
    print("Максимальное значение nmrs3: \(max3)")
} else {
    print("nmrs3 пустой или nil") // nums3 пустой или nil
}

//функция, которая принимает Optional строку и удаляет из нее все пробелы, если строка не nil
func removeSpacesIfNotNil(_ text: String?) -> String? {
    guard let value = text else {
        return nil
    }
    return value.replacingOccurrences(of: " ", with: "")
}

let strk1: String? = "Hello, World!"
let strk2: String? = nil

if let noSpaces1 = removeSpacesIfNotNil(strk1) {
    print("Без пробелов: \(noSpaces1)")
} else {
    print("strk1: nil")
}

if let noSpaces2 = removeSpacesIfNotNil(strk2) {
    print("Без пробелов: \(noSpaces2)")
} else {
    print("strk2: nil")
}

//функция, которая принимает Optional число и возвращает true, если оно простое, и false, если не nil и составное.
func isPrime(_ number: Int?) -> Bool {
    // Проверяем, что число не nil и больше 1
    guard let value = number, value > 1 else {
        return false
    }
    
    // Простое число делится только на 1 и само себя
    for i in 2..<Int(sqrt(Double(value))) + 1 {
        if value % i == 0 {
            return false
        }
    }
    return true
}

let nmr1: Int? = 2
let nmr2: Int? = 15
let nmr3: Int? = 17
let nmr4: Int? = nil

print(isPrime(nmr1)) // true  — 2 простое
print(isPrime(nmr2)) // false — 15 составное
print(isPrime(nmr3)) // true  — 17 простое
print(isPrime(nmr4)) // false — nil

//функция, которая принимает Optional массив строк и возвращает новый массив, содержащий только строки заданной длины, если массив не nil
func stringsOfLength(_ strings: [String]?, length: Int) -> [String]? {
    guard let array = strings else {
        return nil
    }
    return array.filter { $0.count == length }
}

let words: [String]? = ["Toyota", "Honda", "Nissan", "Mazda", "Suzuki", "Mitubishi", "Subaru"]
let noWords: [String]? = nil

if let result1 = stringsOfLength(words, length: 5) {
    print("Строки длиной 5: \(result1)")
} else {
    print("words было nil")
}

if let result2 = stringsOfLength(noWords, length: 3) {
    print("Строки длиной 3: \(result2)")
} else {
    print("noWords: nil") // noWords было nil
}

//функция, которая принимает Optional число и возвращает его факториал, если оно не nil и неотрицательное
func factorialIfNotNil(_ number: Int?) -> Int? {
    guard let value = number, value >= 0 else {
        return nil
    }
    if value == 0 || value == 1 {
        return 1
    }
    return (1...value).reduce(1, *)
}

let no_1: Int? = 7
let no_2: Int? = 0
let no_3: Int? = -2
let no_4: Int? = nil

if let fact1 = factorialIfNotNil(no_1) {
    print("Факториал \(no_1!): \(fact1)")
} else {
    print("no_1 отрицательное или nil")
}

if let fact2 = factorialIfNotNil(no_2) {
    print("Факториал \(no_2!): \(fact2)")
} else {
    print("no_2 отрицательное или nil")
}

if let fact3 = factorialIfNotNil(no_3) {
    print("Факториал \(no_3!): \(fact3)")
} else {
    print("no_3 отрицательное или nil") // no_3 отрицательное или nil
}

if let fact4 = factorialIfNotNil(no_4) {
    print("Факториал \(no_4!): \(fact4)")
} else {
    print("no_4 отрицательное или nil") // no_4 отрицательное или nil
}

//функция, которая принимает Optional массив чисел и возвращает среднее значение, если массив не nil и не пустой
func averageOfArray(_ numbers: [Double]?) -> Double? {
    guard let array = numbers, !array.isEmpty else {
        return nil
    }
    let sum = array.reduce(0, +)
    return sum / Double(array.count)
}

let nms1: [Double]? = [2.3, 3.5, 5.6, 6.9]
let nms2: [Double]? = []
let nms3: [Double]? = nil

if let avg1 = averageOfArray(nms1) {
    print("Среднее значение nms1: \(avg1)")
} else {
    print("nms1 пустой или nil")
}

if let avg2 = averageOfArray(nms2) {
    print("Среднее значение nms2: \(avg2)")
} else {
    print("nms2 пустой или nil") // nms2 пустой или nil
}

if let avg3 = averageOfArray(nms3) {
    print("Среднее значение nms3: \(avg3)")
} else {
    print("nms3 пустой или nil") // nms13 пустой или nil
}

//функция, которая принимает Optional строку и возвращает ее в верхнем регистре, если она не nil
func uppercaseIfNotNil(_ text: String?) -> String? {
    guard let value = text else {
        return nil
    }
    return value.uppercased()
}

let strk_1: String? = "hello, world!"
let strk_2: String? = nil

if let upperStr1 = uppercaseIfNotNil(strk_1) {
    print("Верхний регистр strk_1: \(upperStr1)")
} else {
    print("strk_1: nil")
}

if let upperStr2 = uppercaseIfNotNil(strk_2) {
    print("Верхний регистр strk_2: \(upperStr2)")
} else {
    print("strk_2: nil") // strk_2: nil
}


//Functions

//функция, которая выводит приветствие "Привет, мир!" на экран
func greetWorld() {
    print("Привет, мир!")
}

greetWorld() //выведет: Привет, мир!

//функция, которая принимает имя пользователя и выводит приветствие с этим именем
func greetUser(name: String) {
    print("Hello, \(name)!")
}

greetUser(name: "Andrew")   //выведет: Hello, Andrew!
greetUser(name: "Billy")   //выведет: Hello, Billy!

//функция, которая принимает два числа и возвращает их сумму
func sum1(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let result1 = sum1(8, 10)
let result2 = sum1(-5, 8)

print("Сумма 8 и 10 = \(result1)")   //сумма 8 и 10 = 18
print("Сумма -5 и 8 = \(result2)") //сумма -5 и 8 = 3

//функция, которая принимает два числа и возвращает их произведение
func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}

let res1 = multiply(8, 10)
let res2 = multiply(-5, 8)
let res3 = multiply(3, 0)

print("Произведение 8 и 10 = \(res1)")
print("Произведение -5 и 8 = \(res2)")
print("Произведение 3 и 0 = \(res3)")

//функция, которая принимает строку и возвращает ее длину
func stringLength(_ text: String) -> Int {
    return text.count
}

let str01 = "Hello,"
let str02 = "world!"
let str03 = ""

print("Длина строки '\(str01)' = \(stringLength(str01))")  // 6
print("Длина строки '\(str02)' = \(stringLength(str02))") // 6
print("Длина пустой строки = \(stringLength(str03))")    // 0

//функция, которая принимает массив чисел и возвращает сумму всех элементов массива
func sumOfArray(_ numbers: [Int]) -> Int {
    return numbers.reduce(0, +)
}

let nums01 = [4, 8, 15, 16, 23, 42]
let nums02 = [10, -1, 99]
let nums03: [Int] = []

print("Сумма nums01 = \(sumOfArray(nums01))")   // 108
print("Сумма nums02 = \(sumOfArray(nums02))")  // 108
print("Сумма nums03 = \(sumOfArray(nums03))") // 0

//функция, которая принимает массив строк и выводит каждую строку на новой строке
func printStrings(_ strings: [String]) {
    for str in strings {
        print(str)
    }
}

let words01 = ["Hello", "world", "it's", "Swift!"]
let emptyWords: [String] = []

print("Вывод массива words01:")
printStrings(words01)
/*
Выведет:
 Hello
 world
 it's
 Swift!
*/

print("\nВывод пустого массива:")
printStrings(emptyWords) //ничего не выведет

//функция, которая принимает число и возвращает true, если оно четное, и false, если нечетное
func isEven(_ number: Int) -> Bool {
    return number % 2 == 0
}

let num01 = 0
let num02 = 0
let num03 = 7

print("Число \(num01) чётное? \(isEven(num01))")   //true
print("Число \(num02) чётное? \(isEven(num02))")  //true
print("Число \(num03) чётное? \(isEven(num03))") //false

//функция, которая принимает число и возвращает true, если оно простое, и false, если составное
func isEvens(_ number: Int) -> Bool {
    return number % 2 == 0
}

print(isEvens(2))   // true
print(isEvens(5))   // false
print(isEvens(0))   // true
print(isEvens(-4))  // true
print(isEvens(-7))  // false

//функция, которая принимает два числа и возвращает большее из них
func maxOfTwo(_ a: Int, _ b: Int) -> Int {
    return a > b ? a : b
}

let num001 = 10
let num002 = 25
let num003 = -3
let num004 = -7

print("Большее из \(num001) и \(num002): \(maxOfTwo(num001, num002))") // 25
print("Большее из \(num003) и \(num004): \(maxOfTwo(num003, num004))") // -3

//функция, которая принимает массив чисел и возвращает массив только из четных чисел
func filterEvenNumbers(_ numbers: [Int]) -> [Int] {
    return numbers.filter { $0 % 2 == 0 }
}

let nums0001 = [4, 8, 15, 16, 23, 42]
let nums0002 = [0, 0, 7]
let nums0003 = [0, 1, -1, -88]

print("Чётные числа nums0001: \(filterEvenNumbers(nums0001))") // [4, 8, 16, 42]
print("Чётные числа nums0002: \(filterEvenNumbers(nums0002))") // [0 , 0]
print("Чётные числа nums0003: \(filterEvenNumbers(nums0003))") // [0, -88]

//функция, которая принимает строку и возвращает ее в обратном порядке
func reverseString(_ text: String) -> String {
    return String(text.reversed())
}

let str001 = "Hello,"
let str002 = "world!"

print("Оригинал: \(str001) -> Обратный: \(reverseString(str001))")
print("Оригинал: \(str002) -> Обратный: \(reverseString(str002))")

//функция, которая принимает массив строк и возвращает новый массив, содержащий только строки заданной длины
func stringsOfLength(_ strings: [String], length: Int) -> [String] {
    return strings.filter { $0.count == length }
}

let words001 = ["Toyota", "Honda", "Nissan", "Mazda", "Mitsubishi", "Subaru"]

let length4 = stringsOfLength(words001, length: 5)
let length2 = stringsOfLength(words001, length: 6)

print("Строки длиной 5: \(length4)")
print("Строки длиной 6: \(length2)")

//функция, которая принимает два числа и возвращает массив с числами в этом диапазоне
func rangeArray(from start: Int, to end: Int) -> [Int] {
    guard start <= end else {
        return [] // если start больше end, возвращаем пустой массив
    }
    return Array(start...end)
}

let range1 = rangeArray(from: 3, to: 77)
let range2 = rangeArray(from: 5, to: 5)
let range3 = rangeArray(from: 99, to: 91)

print("Диапазон 3-77: \(range1)")
print("Диапазон 5-5: \(range2)")
print("Диапазон 99-91: \(range3)")

//функция, которая принимает число и возвращает массив всех чисел от 0 до этого числа
func arrayUpTo(_ number: Int) -> [Int] {
    guard number >= 0 else {
        return [] // если число отрицательное, возвращаем пустой массив
    }
    return Array(0...number)
}

let arr1 = arrayUpTo(13)
let arr2 = arrayUpTo(0)
let arr3 = arrayUpTo(-7)

print("Массив до 13: \(arr1)")
print("Массив до 0: \(arr2)")   // [0]
print("Массив до -3: \(arr3)") // []

//функция, которая принимает массив чисел и возвращает среднее значение
func average(of numbers: [Double]) -> Double {
    guard !numbers.isEmpty else {
        return 0 // если массив пустой, возвращаем 0
    }
    let sum = numbers.reduce(0, +)
    return sum / Double(numbers.count)
}

let numers01 = [1.5, 2.6, 3.7, 4.8]
let numers02 : [Double] = []
let numers03 = [11.11, 22.22, 33.33]

print("Среднее numers01: \(average(of: numers01))")
print("Среднее пустого массива: \(average(of: numers02))") // 0
print("Среднее numers03: \(average(of: numers03))")

//функция, которая принимает массив чисел и возвращает количество положительных чисел
func countPositiveNumbers(_ numbers: [Int]) -> Int {
    return numbers.filter { $0 > 0 }.count
}

let numbs01 = [4, -8, -15, 16, 23, -42]
let numbs02 = [0, 0, -7]
let numbs03: [Int] = []

print("Количество положительных чисел в numbs01: \(countPositiveNumbers(numbs01))")   // 3
print("Количество положительных чисел в numbs02: \(countPositiveNumbers(numbs02))")  // 0
print("Количество положительных чисел в numbs03: \(countPositiveNumbers(numbs03))") // 0

//функция, которая принимает массив чисел и возвращает сумму квадратов этих чисел
func sumOfSquares(_ numbers: [Int]) -> Int {
    return numbers.map { $0 * $0 }.reduce(0, +)
}

let numbs001 = [4, 8, 15, 16, 23, 42]
let numbs002 = [-1, -2, 3]
let numbs003: [Int] = []

print("Сумма квадратов numbs001: \(sumOfSquares(numbs001))")
print("Сумма квадратов numbs002: \(sumOfSquares(numbs002))")
print("Сумма квадратов numbs003: \(sumOfSquares(numbs003))")

//функция, которая принимает массив строк и возвращает массив строк без повторений
func uniqueStrings(_ strings: [String]) -> [String] {
    var seen = Set<String>()
    return strings.filter { seen.insert($0).inserted }
}

let words0001 = ["Toyota", "Toyo", "Honda", "Hyundai", "Kia", "KIA", "Honda"]
let emptyWords01: [String] = []

print("Уникальные строки: \(uniqueStrings(words0001))")
print("Уникальные строки пустого массива: \(uniqueStrings(emptyWords01))") // []

//функция, которая принимает две строки и проверяет, является ли одна строка анаграммой другой
func areAnagrams(_ str1: String, _ str2: String) -> Bool {
    // Убираем пробелы и приводим к нижнему регистру
    let normalizedStr1 = str1.replacingOccurrences(of: " ", with: "").lowercased()
    let normalizedStr2 = str2.replacingOccurrences(of: " ", with: "").lowercased()
    
    // Если длины не равны, это точно не анаграммы
    guard normalizedStr1.count == normalizedStr2.count else {
        return false
    }
    
    // Сортируем символы и сравниваем
    return normalizedStr1.sorted() == normalizedStr2.sorted()
}

// Примеры использования
let word1 = "listen"
let word2 = "silent"
let word3 = "hello"
let word4 = "world"
let word5 = "ko"
let word6 = "ok"
let word7 = "hong"
let word8 = "kong"

print("'\(word1)' и '\(word2)' анаграммы? \(areAnagrams(word1, word2))") // true
print("'\(word3)' и '\(word4)' анаграммы? \(areAnagrams(word3, word4))") // false
print("'\(word5)' и '\(word6)' анаграммы? \(areAnagrams(word1, word2))") // true
print("'\(word7)' и '\(word8)' анаграммы? \(areAnagrams(word3, word4))") // false
