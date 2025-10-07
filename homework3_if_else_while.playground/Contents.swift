import UIKit

//Домашнее задание по 3 лекции Управление потоком выполнения: if/else, while, for-in, switch, etc:
//код, который проверяет, является ли число положительным, отрицательным или нулем
let number = -5

if number > 0 {
    print("Число положительное.")
} else if number < 0 {
    print("Число отрицательное.")
} else {
    print("Число равно нулю.")
}

//инкриментирование каждого элемента в массиве
let numbers = [1, 2, 3, 4, 5]

let incrementedNumbers = numbers.map { $0 + 1 } //увеличиваем каждый элемент на 1

print(incrementedNumbers)

//используя цикл for-in, выводим все числа от 10 до 1 в обратном порядке
for number in (1...10).reversed() {
    print(number)
}

//используем условие if для проверки, является ли переменная четным числом
let nmbr = 7

if nmbr % 2 == 0 {
    print("Число \(nmbr)- чётное.")
} else {
    print("Число \(nmbr)- не чётное.")
}

//используем switch чтобы классифицировать оценку буквой
let score = 87

switch score {
case 90...100:
    print("Оценка: A")
case 80..<90:
    print("Оценка: B")
case 70..<80:
    print("Оценка: C")
case 60..<70:
    print("Оценка: D")
default:
    print("Оценка: F")
}

//цикл while, который добавляет элементы в массив до тех пор, пока его размер не достигнет 10
var nmrs: [Int] = []      // создаём пустой массив
var current = 1              // начальное значение

while nmrs.count < 10 {
    nmrs.append(current)  // добавляем число в массив
    current += 1             // увеличиваем текущее число
}

print(nmrs)

//цикл, который удваивает значение каждого элемента в массиве integer
var numb = [1, 2, 3, 4, 5]

for i in 0..<numb.count {
    numb[i] *= 2
} //создаём диапазон индексов массива и умножаем каждый элемент на 2

print(numb)

//используем оператор if-else, чтобы проверить, равны или нет две строки
let firstString = "300 bucks"
let secondString = "three hundreed bucks"

if firstString == secondString {
    print("Строки равны.")
} else {
    print("Строки не равны.")
}

//cловарь с ключами-строками и значениями-integers. Используем цикл for-in для итерации по словарю и печати каждого значения
//сначала создаём словарь: ключ — строка, значение — целое число
let points: [String: Int] = [
    "Chelsea": 99,
    "Arsenal": 88,
    "Man City": 76,
    "Liverpool": 92,
    "Newcastle": 81
]

// Перебираем словарь и выводим значения
for (name, point) in points {
    print("\(name): \(point)")
}

//цикл for, который выведет только четные числа в диапазоне от 1 до 100
for number in 1...100 {
    if number % 2 == 0 {
        print(number)
    }
}

//создаем строку с именем firstName, используя if-else, чтобы проверить, если firstName равно вашему имени, напечатайте 'Hello, me!', в противном случае напечатайте 'Hello, (имя)!'
let firstName = "Johan"
let myName = "John"

if firstName == myName {
    print("Hello, me!")
} else {
    print("Hello, \(firstName)!")
}

//выводим все элементы массива, которые больше среднего значения
let nums = [4, 8, 15, 16, 23, 42]

// Считаем среднее значение
let sum = nums.reduce(0, +)
let average = sum / nums.count

print("Среднее значение: \(average)")
print("Элементы больше среднего:")

// Перебираем массив и выводим элементы, больше среднего
for number in nums {
    if number > average {
        print(number)
    }
}

//код, который осуществляет вывод чисел от 1 до 100. Но для кратных трём  вместо числа выводим слово "Fizz", а для кратных пяти — слово "Buzz". Если число кратно и 3, и 5, то выведим "FizzBuzz"
for number in 1...100 {
    if number % 3 == 0 && number % 5 == 0 {
        print("FizzBuzz")
    } else if number % 3 == 0 {
        print("Fizz")
    } else if number % 5 == 0 {
        print("Buzz")
    } else {
        print(number)
    }
}

//цикл for-in, чтобы перебрать массив слов и напечатать длину каждого слова
let words = ["four", "eight", "fiveteen", "sixteen", "twentythree", "fortytwo"]

for word in words {
    print("\(word) имеет длину \(word.count) символов")
}

//цикл, чтобы перебрать массив чисел и создайте новый массив с соответствующими строковыми представлениями каждого числа
let nom = [4, 8, 15, 16, 23, 42]
var stringNoms: [String] = []

for number in nom {
    stringNoms.append(String(number))
}

print(stringNoms)

//цикл, который превращает массив строк в массив всех строк в верхнем регистре
let brands = ["toyota", "mazda", "nissan", "subaru", "mitsubishi", "honda"]
var uppercasedBrands: [String] = []

for brand in brands {
    uppercasedBrands.append(brand.uppercased())
}

print(uppercasedBrands)

//цикл while, который продолжает генерировать случайные числа до тех пор, пока не будет сгенерировано число, равное 50
var numr = 0

while numr != 50 {
    numr = Int.random(in: 1...99)
    print("Сгенерировано число: \(numr)")
}

print("Сгенерировано число 50! Цикл завершён.")

//цикл, который умножает каждое число в массиве на два
var doubledNumbers = [4, 8, 15, 16, 23, 42]

for i in 0..<doubledNumbers.count {
    doubledNumbers[i] *= 2
}

print(doubledNumbers)

//программа с использованием if-else, которая проверяет, является ли номер года високосным
let year = 2007

if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) {
    print("\(year) — високосный год")
} else {
    print("\(year) — невисокосный год")
}

//программ, которая с помощью switch выводит количество дней в каждом месяце
let months = ["January", "February", "March", "April", "May", "June",
              "July", "August", "September", "October", "November", "December"] // Список всех месяцев


for month in months {
    switch month {
    case "January", "March", "May", "July", "August", "October", "December":
        print("\(month) has 31 days")
    case "April", "June", "September", "November":
        print("\(month) has 30 days")
    case "February":
        print("\(month) has 28 or 29 days")
    default:
        print("Unknown month")
    }
}

