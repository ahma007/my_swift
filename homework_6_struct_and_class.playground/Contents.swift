import UIKit

//Домашнее задание по 6-й лекции

//Структуры (Struct)

//создаём структуру Point, представляющую точку на двумерной плоскости с координатами x и y
struct Point {
    var x: Double
    var y: Double
}

let p1 = Point(x: 3.0, y: 4.0)
print("Точка: (\(p1.x), \(p1.y))") // Точка: (3.0, 4.0)


//объявляем структуру Rectangle, содержащую свойства width (ширина) и height (высота), с методом, который возвращает площадь прямоугольника
// Структура, представляющая прямоугольник
struct Rectangle {
    var width: Double    //ширина
    var height: Double  //высота
    
    //метод вычисляет площадь прямоугольника
    func area() -> Double {
        return width * height
    }
    
    //метод возвращает строковое описание
    func description() -> String {
        return "Прямоугольник (ширина: \(width), высота: \(height))"
    }
}

let rect = Rectangle(width: 5.0, height: 3.0) //создаём экземпляр структуры

print(rect.description()) //выводим информацию
print("Площадь прямоугольника: \(rect.area())") //вычисляем и выводим площадь


//определяем структуру Person, представляющую человека с свойствами name (имя) и age (возраст)
// Структура, представляющая человека
struct Person {
    var name: String    //имя
    var age: Int       //возраст
    
    //Метод возвращает краткое описание человека
    func description() -> String {
        return "Имя: \(name), возраст: \(age)"
    }
    
    //Метод увеличивает возраст на 1 год
    mutating func haveBirthday() {
        age += 1
    }
}

var person = Person(name: "Алиса", age: 25) //создаём человека

print(person.description()) //выводим информацию

person.haveBirthday() //отмечаем день рождения

print("После дня рождения: \(person.description())") //Проверяем обновлённые данные


//создаём структуру Car, содержащую свойства brand (марка) и model (модель). Пишем метод, который выводит информацию о машине
// Структура, представляющая автомобиль
struct Car {
    var brand: String    //марка
    var model: String   //модель
    
    //метод выводит информацию о машине
    func displayInfo() {
        print("Марка: \(brand), модель: \(model)")
    }
}

//создаём экземпляры машин
let car1 = Car(brand: "Toyota", model: "Corolla")
let car2 = Car(brand: "Honda", model: "Civic")
let car3 = Car(brand: "Nissan", model: "Teana")

//выводим информацию о машинах
car1.displayInfo()
car2.displayInfo()
car3.displayInfo()


//объявляем структуру Circle, содержащую свойство radius (радиус). Пишем метод, который возвращает площадь круга
//структура, представляющая круг
struct Circle {
    var radius: Double   //радиус
    
    //метод вычисляет площадь круга
    func area() -> Double {
        return Double.pi * radius * radius
    }
    
    //метод возвращает строковое описание круга
    func description() -> String {
        return "Круг с радиусом \(radius)"
    }
}

let circle = Circle(radius: 5.0) //создаём экземпляр круга

print(circle.description()) //выводим информацию
print("Площадь круга: \(circle.area())") //вычисляем и выводим площадь


//создаём структуру Book, содержащую свойства title (название) и author (автор). Пишем метод, который выводит информацию о книге
//структура, представляющая книгу
struct Book {
    var title: String    //название
    var author: String  //автор
    
    //метод выводит информацию о книге
    func displayInfo() {
        print("Название: \(title), автор: \(author)")
    }
}

//создаём экземпляры книг
let book1 = Book(title: "Hobbit", author: "J.R.R. Tolkien")
let book2 = Book(title: "The Idiot", author: "F.M. Dostoevskij")
let book3 = Book(title: "Karlsson", author: "A.A.E. Lindgren")

//выводим информацию о книгах
book1.displayInfo()
book2.displayInfo()
book3.displayInfo()


//определяем структуру Temperature, представляющую температуру с свойством value (значение) и методом для конвертации из Цельсия в Фаренгейт
//структура, представляющая температуру
struct Temperature {
    var value: Double   //значение температуры в градусах Цельсия
    
    //метод конвертирует Цельсий в Фаренгейт
    func toFahrenheit() -> Double {
        return (value * 9/5) + 32
    }
    
    //метод возвращает строковое описание температуры
    func description() -> String {
        return "\(value)°C = \(toFahrenheit())°F"
    }
}

//создаём экземпляры температуры
let temp1 = Temperature(value: 18.0)
let temp2 = Temperature(value: 0.0)

//выводим информацию о температуре и конвертации
print(temp1.description())  //18.0°C = 64.4°F
print(temp2.description()) //0.0°C = 32.0°F


//создаём структуру Country, содержащую свойства name (название) и population (население). Пишем метод, который выводит информацию о стране
//структура, представляющая страну
struct Country {
    var name: String       //название страны
    var population: Int   //население
    
    //метод выводит информацию о стране
    func displayInfo() {
        print("Страна: \(name), население: \(population)")
    }
}

//создаём экземпляры стран
let country1 = Country(name: "Россия", population: 146000000)
let country2 = Country(name: "Польша", population: 38000000)
let country3 = Country(name: "Чехия", population: 11000000)

// Выводим информацию о странах
country1.displayInfo()
country2.displayInfo()
country3.displayInfo()


//объявляем структуру Product, содержащую свойства name (название) и price (цена). Пишем метод, который возвращает цену товара в формате строки с валютой
//структура, представляющая товар
struct Product {
    var name: String    //название товара
    var price: Double  //цена товара
    
    //метод возвращает цену товара в формате строки с валютой
    func priceWithCurrency() -> String {
        return "\(price) $"
    }
    
    //метод выводит информацию о товаре
    func displayInfo() {
        print("Товар: \(name), цена: \(priceWithCurrency())")
    }
}

//создаём экземпляры товаров
let product1 = Product(name: "iPhone", price: 999)
let product2 = Product(name: "MacBook Pro", price: 1499)

//выводим информацию о товарах
product1.displayInfo()
product2.displayInfo()


//создаём структуру Song, содержащую свойства title (название) и artist (исполнитель). Пишем метод, который выводит информацию о песне
//структура, представляющая песню
struct Song {
    var title: String    //название песни
    var artist: String  //исполнитель
    
    //Метод выводит информацию о песне
    func displayInfo() {
        print("Песня: \"\(title)\", исполнитель: \(artist)")
    }
}

//создаём экземпляры песен
let song1 = Song(title: "Wonderwall", artist: "Oasis")
let song2 = Song(title: "Song 2", artist: "Blur")
let song3 = Song(title: "Dancing shoes", artist: "Arctic Monkeys")
let song4 = Song(title: "Take me out", artist: "Franz Ferdinand")

//выводим информацию о песнях
song1.displayInfo()
song2.displayInfo()
song3.displayInfo()
song4.displayInfo()


//определяем структуру Line, представляющую отрезок на плоскости с начальной и конечной точками. Пишем метод, который возвращает длину отрезка
//структура, представляющая точку на плоскости
struct Points {
    var x: Double
    var y: Double
}

//структура, представляющая отрезок
struct Line {
    var start: Points   //начальная точка
    var end: Points    //конечная точка
    
    //метод вычисляет длину отрезка
    func length() -> Double {
        let dx = end.x - start.x
        let dy = end.y - start.y
        return (dx * dx + dy * dy).squareRoot()
    }
    
    //метод возвращает строковое описание отрезка
    func description() -> String {
        return "Отрезок от (\(start.x), \(start.y)) до (\(end.x), \(end.y))"
    }
}

//создаём точки
let pointA = Points(x: 1, y: 2)
let pointB = Points(x: 4, y: 6)

//создаём отрезок
let line = Line(start: pointA, end: pointB)

//выводим информацию
print(line.description())

//вычисляем длину отрезка
print("Длина отрезка: \(line.length())")


//создаём структуру Triangle, содержащую свойства sideA, sideB и sideC (стороны треугольника). Пишем метод, который определяет, является ли треугольник прямоугольным
//структура, представляющая треугольник
struct Triangle {
    var sideA: Double    //сторона A
    var sideB: Double   //сторона B
    var sideC: Double  //сторона C
    
    //Метод проверяет, является ли треугольник прямоугольным
    func isRightAngled() -> Bool {
        //сначала сортируем стороны по возрастанию, чтобы гипотенуза была последней
        let sides = [sideA, sideB, sideC].sorted()
        let a = sides[0]
        let b = sides[1]
        let c = sides[2] //гипотенуза
        
        //проверяем теорему Пифагора с небольшой точностью для Double
        return abs(c * c - (a * a + b * b)) < 1e-10
    }
    
    //Метод описание треугольника
    func description() -> String {
        return "Треугольник со сторонами \(sideA), \(sideB), \(sideC)"
    }
}

//создаём треугольники
let triangle1 = Triangle(sideA: 3, sideB: 4, sideC: 5)
let triangle2 = Triangle(sideA: 5, sideB: 5, sideC: 5)

//выводим информацию и проверяем прямоугольность
print(triangle1.description())
print("Прямоугольный? \(triangle1.isRightAngled() ? "Да" : "Нет")")

print(triangle2.description())
print("Прямоугольный? \(triangle2.isRightAngled() ? "Да" : "Нет")")


//объявляем структуру BankAccount, содержащую свойства balance (баланс) и currency (валюта). Пишем метод, который позволяет пополнить счет на определенную сумму
//структура, представляющая банковский счет
struct BankAccount {
    var balance: Double    //баланс
    var currency: String  //валюта
    
    //Метод пополнение счета на указанную сумму
    mutating func deposit(amount: Double) {
        guard amount > 0 else {
            print("Сумма пополнения должна быть положительной.")
            return
        }
        balance += amount
        print("Счет пополнен на \(amount) \(currency). Текущий баланс: \(balance) \(currency)")
    }
    
    //Метод вывод информации о счете
    func displayInfo() {
        print("Баланс: \(balance) \(currency)")
    }
}

//Создаём банковский счет
var account = BankAccount(balance: 300.0, currency: "$")

//Выводим информацию о счете
account.displayInfo()  //Баланс: 300.0 $

//Пополняем счет
account.deposit(amount: 50)  // Счет пополнен на 50 $. Текущий баланс: 350.0 $
account.deposit(amount: -50) // Сумма пополнения должна быть положительной.


//создаём структуру Student, содержащую свойства name (имя), age (возраст) и grades (оценки). Пишем метод, который возвращает средний балл студента
//структура, представляющая студента
struct Student {
    var name: String        //имя студента
    var age: Int           //возраст
    var grades: [Double]  //оценки
    
    //Метод вычисляет средний балл
    func averageGrade() -> Double {
        guard !grades.isEmpty else {
            return 0.0 // если оценок нет, возвращаем 0
        }
        let total = grades.reduce(0, +)
        return total / Double(grades.count)
    }
    
    //Метод выводит информацию о студенте
    func displayInfo() {
        print("Студент: \(name), возраст: \(age), средний балл: \(averageGrade())")
    }
}

//создаём экземпляры студентов
let student1 = Student(name: "Ryan", age: 18, grades: [5, 4, 5, 5, 5])
let student2 = Student(name: "Billy", age: 19, grades: [4, 3, 4, 3, 5])
let student3 = Student(name: "Johny", age: 18, grades: [5, 5, 5, 5, 5])

//Выводим информацию о студентах
student1.displayInfo()   //cтудент: Ryan, возраст: 18, средний балл: 4.8
student2.displayInfo()  //cтудент: Billy, возраст: 19, средний балл: 3.8
student3.displayInfo() //cтудент: Johny, возраст: 18, средний балл: 5.0


//определяем структуру Employee, представляющую сотрудника с свойствами name (имя), position (должность) и salary (зарплата). Пишем метод, который увеличивает зарплату на определенный процент
//структура, представляющая сотрудника
struct Employee {
    var name: String        //имя сотрудника
    var position: String   //должность
    var salary: Double    //зарплата
    
    //Метод увеличивает зарплату на указанный процент
    mutating func raiseSalary(byPercent percent: Double) {
        guard percent > 0 else {
            print("Процент должен быть положительным.")
            return
        }
        salary += salary * percent / 100
        print("Зарплата сотрудника \(name) увеличена на \(percent)%. Новый размер: \(salary)")
    }
    
    //Метод выводит информацию о сотруднике
    func displayInfo() {
        print("Сотрудник: \(name), должность: \(position), зарплата: \(salary)")
    }
}

//создаём сотрудников
var employee1 = Employee(name: "Scott", position: "DevOps", salary: 150000)
var employee2 = Employee(name: "Bryan", position: "AQA", salary: 160000)

//выводим информацию о сотрудниках
employee1.displayInfo()
employee2.displayInfo()

//увеличиваем зарплату
employee1.raiseSalary(byPercent: 10)  //зарплата увеличена на 10%
employee2.raiseSalary(byPercent: 5)  //зарплата увеличена на 5%


//создаём структуру Rectangle, содержащую свойства width (ширина) и height (высота). Пишем метод, который определяет, является ли прямоугольник квадратом
//структура, представляющая прямоугольник
struct Rectangles {
    var width: Double    //ширина
    var height: Double  //высота
    
    //Метод проверяет, является ли прямоугольник квадратом
    func isSquare() -> Bool {
        return width == height
    }
    
    //Метод возвращает описание прямоугольника
    func description() -> String {
        return "Прямоугольник: ширина = \(width), высота = \(height)"
    }
}

//создаём прямоугольники
let rect1 = Rectangles(width: 5, height: 5)
let rect2 = Rectangles(width: 6, height: 4)

//выводим информацию и проверяем, квадрат ли это
print(rect1.description())
print("Является квадратом? \(rect1.isSquare() ? "Да" : "Нет")")

print(rect2.description())
print("Является квадратом? \(rect2.isSquare() ? "Да" : "Нет")")


//объявляем структуру Date, содержащую свойства day (день), month (месяц) и year (год). Пишем метод, который проверяет, является ли год високосным
//структура, представляющая дату
struct Date {
    var day: Int
    var month: Int
    var year: Int
    
    //Метод проверяет, является ли год високосным
    func isLeapYear() -> Bool {
        //Год високосный, если делится на 4, но не на 100, или делится на 400
        return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
    }
    
    //Метод возвращает строковое описание даты
    func description() -> String {
        return "\(day)-\(month)-\(year)"
    }
}

//создаём даты
let date1 = Date(day: 29, month: 2, year: 2020)
let date2 = Date(day: 1, month: 3, year: 2021)

//выводим информацию и проверяем, високосный ли год
print("\(date1.description()): Високосный? \(date1.isLeapYear() ? "Да" : "Нет")")
print("\(date2.description()): Високосный? \(date2.isLeapYear() ? "Да" : "Нет")")


//создаём структуру Bank, представляющую банк с свойствами name (название) и accounts (счета). Пишем метод, который возвращает общую сумму денег на всех счетах
//структура, представляющая банковский счет
struct BankAccounts {
    var balance: Double
    var currency: String
}

//структура, представляющая банк
struct Bank {
    var name: String
    var accounts: [BankAccounts]
    
    //Метод вычисляет общую сумму денег на всех счетах
    func totalBalance() -> Double {
        return accounts.reduce(0) { $0 + $1.balance }
    }
    
    //Метод выводит информацию о банке
    func displayInfo() {
        print("Банк: \(name), количество счетов: \(accounts.count), общая сумма: \(totalBalance())")
    }
}

//Создаём счета
let account1 = BankAccounts(balance: 299, currency: "$")
let account2 = BankAccounts(balance: 199, currency: "$")
let account3 = BankAccounts(balance: 99, currency: "$")

//Создаём банк
let bank = Bank(name: "Deustche Bank", accounts: [account1, account2, account3])

// Выводим информацию о банке
bank.displayInfo()  //Банк: Deustche Bank, количество счетов: 3, общая сумма: 597.0


//определяем структуру Recipe, содержащую свойства name (название), ingredients (ингредиенты) и instructions(инструкции приготовления). Пишем метод, который выводит информацию о рецепте
//структура, представляющая рецепт
struct Recipe {
    var name: String             //название рецепта
    var ingredients: [String]   //список ингредиентов
    var instructions: String   //инструкции приготовления
    
    //Метод выводит информацию о рецепте
    func displayInfo() {
        print("Рецепт: \(name)\n")
        print("Ингредиенты:")
        for ingredient in ingredients {
            print("- \(ingredient)")
        }
        print("\nИнструкции:\n\(instructions)")
    }
}

//создаём рецепт
let pancakeRecipe = Recipe(
    name: "Блины",
    ingredients: ["Мука – 200 г", "Молоко – 300 мл", "Яйцо – 2 шт", "Сахар – 2 ст. л.", "Соль – щепотка"],
    instructions: "1. Взбейте яйца с сахаром и солью.\n2. Добавьте молоко и постепенно всыпьте муку.\n3. Разогрейте сковороду и выпекайте блины с обеих сторон до золотистой корочки."
)

//выводим информацию о рецепте
pancakeRecipe.displayInfo()


//создаём структуру Movie, содержащую свойства title (название), director (режиссер) и releaseYear (год выпуска). Пишем метод, который выводит информацию о фильме
//структура, представляющая фильм
struct Movie {
    var title: String        //название фильма
    var director: String    //режиссер
    var releaseYear: Int   //год выпуска
    
    //Метод выводит информацию о фильме
    func displayInfo() {
        print("Фильм: \"\(title)\", режиссер: \(director), год выпуска: \(releaseYear)")
    }
}

//создаём фильмы
let movie1 = Movie(title: "Drive", director: "N.W. Refn", releaseYear: 2011)
let movie2 = Movie(title: "There Will Be Blood", director: "P.T. Anderson", releaseYear: 2007)
let movie3 = Movie(title: "Lady Bird", director: "Greta Gerwig", releaseYear: 2017)

// Выводим информацию о фильмах
movie1.displayInfo()
movie2.displayInfo()
movie3.displayInfo()


//Классы (Class)

//создаём класс Person, содержащий свойства name (имя) и age (возраст)
//класс, представляющий человека
class Persons {
    var name: String   //имя
    var age: Int      //возраст
    
    //инициализатор (конструктор)
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    //Метод выводит информацию о человеке
    func displayInfo() {
        print("Имя: \(name), возраст: \(age)")
    }
}

//создаём объекты класса Person
let person1 = Persons(name: "Stacy", age: 35)
let person2 = Persons(name: "Tiffany", age: 30)

//ыыводим информацию
person1.displayInfo()   //Имя: Stacy, возраст: 35
person2.displayInfo()  //Имя: Tiffany, возраст: 30


//объявляем класс Car, содержащий свойства brand (марка) и model (модель)
//класс, представляющий автомобиль
class Cars {
    var brand: String   // марка
    var model: String  // модель
    
    //инициализатор (конструктор)
    init(brand: String, model: String) {
        self.brand = brand
        self.model = model
    }
    
    //метод выводит информацию о машине
    func displayInfo() {
        print("Автомобиль: \(brand) \(model)")
    }
}

//создаём объекты класса Cars
let cars1 = Cars(brand: "Toyota", model: "Corolla")
let cars2 = Cars(brand: "Honda", model: "Civic")
let cars3 = Cars(brand: "Nissan", model: "Teana")
let cars4 = Cars(brand: "Kia", model: "Rio")

//выводим информацию о машинах
cars1.displayInfo()     //Автомобиль: Toyota Corolla
cars2.displayInfo()    //Автомобиль: Honda Civic
cars3.displayInfo()  //Автомобиль: Nissan Teana
cars4.displayInfo() //Автомобиль: Kia Rio


//определяем класс Circle, содержащий свойство radius (радиус). Пишем метод, который возвращает площадь круга
//класс, представляющий круг
class Circles {
    var radius: Double   // радиус круга
    
    //инициализатор (конструктор)
    init(radius: Double) {
        self.radius = radius
    }
    
    //метод вычисляет площадь круга
    func area() -> Double {
        return Double.pi * radius * radius
    }
    
    //метод выводит информацию о круге
    func displayInfo() {
        print("Круг с радиусом \(radius). Площадь: \(area())")
    }
}

//создаём объекты класса Circle
let circles1 = Circles(radius: 5)
let circles2 = Circles(radius: 10)

//выводим информацию
circles1.displayInfo()   //круг с радиусом 5.0. Площадь: 78.53981633974483
circles2.displayInfo()  //круг с радиусом 10.0. Площадь: 314.1592653589793


//создаем класс Book, содержащий свойства title (название) и author (автор)
//класс, представляющий книгу
class Books {
    var title: String    //название
    var author: String  //автор
    
    //инициализатор (конструктор)
    init(title: String, author: String) {
        self.title = title
        self.author = author
    }
    
    //метод выводит информацию о книге
    func displayInfo() {
        print("Книга: \"\(title)\", автор: \(author)")
    }
}

//создаём объекты класса Book
let books1 = Books(title: "Karlsson", author: "A. Lindgren")
let books2 = Books(title: "Hobbit", author: "J.R.R. Tolkien")
let books3 = Books(title: "The Idiot", author: "F.M. Dostoyevskiy")

//выводим информацию о книгах
books1.displayInfo()
books2.displayInfo()
books3.displayInfo()


//объявляем класс Rectangle, содержащий свойства width (ширина) и height (высота). Пишем метод, который возвращает площадь прямоугольника
//класс, представляющий прямоугольник
class Rectangls {
    var width: Double    //ширина
    var height: Double  //высота
    
    //инициализатор (конструктор)
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    //метод вычисляет площадь прямоугольника
    func area() -> Double {
        return width * height
    }
    
    //метод выводит информацию о прямоугольнике
    func displayInfo() {
        print("Прямоугольник: ширина = \(width), высота = \(height), площадь = \(area())")
    }
}

//создаём объекты класса Rectangle
let rects1 = Rectangls(width: 5, height: 10)
let rects2 = Rectangls(width: 3.5, height: 4.2)

//выводим информацию о прямоугольниках
rects1.displayInfo()   //Прямоугольник: ширина = 5.0, высота = 10.0, площадь = 50.0
rects2.displayInfo()  //Прямоугольник: ширина = 3.5, высота = 4.2, площадь = 14.7


//создаём класс Animal, содержащий свойство name (имя). Пишем метод, который выводит звук, который издает животное
//класс, представляющий животное
class Animal {
    var name: String   //имя животного
    
    //инициализатор (конструктор)
    init(name: String) {
        self.name = name
    }
    
    //метод выводит звук, который издаёт животное
    func makeSound() {
        print("\(name) издаёт звук ")
    }
    
    //метод выводит информацию о животном
    func displayInfo() {
        print("Животное: \(name)")
    }
}

//создаём объекты класса Animal
let dog = Animal(name: "Собака")
let cat = Animal(name: "Кошка")
let raven = Animal(name: "Ворон")

//выводим информацию и звуки
dog.displayInfo()
dog.makeSound()

cat.displayInfo()
cat.makeSound()

raven.displayInfo()
raven.makeSound()


//определяем класс BankAccount, содержащий свойства balance (баланс) и owner (владелец)
//класс, представляющий банковский счёт
class BankAcc {
    var balance: Double   //баланс счёта
    var owner: String    //владелец счёта
    
    //инициализатор (конструктор)
    init(balance: Double, owner: String) {
        self.balance = balance
        self.owner = owner
    }
    
    //метод выводит информацию о счёте
    func displayInfo() {
        print("Владелец счёта: \(owner), баланс: \(balance) $")
    }
}

//создаём объекты класса BankAccount
let accounts1 = BankAcc(balance: 300.0, owner: "Smith A.")
let accounts2 = BankAcc(balance: 100.0, owner: "Franklin B.")
let accounts3 = BankAcc(balance: 0.0, owner: "Marx C.")

//выводим информацию о счетах
accounts1.displayInfo()
accounts2.displayInfo()
accounts3.displayInfo()


//создаём класс Song, содержащий свойства title (название) и artist (исполнитель)
//класс, представляющий песню
class Songs {
    var title: String    //название песни
    var artist: String  //исполнитель
    
    //инициализатор (конструктор)
    init(title: String, artist: String) {
        self.title = title
        self.artist = artist
    }
    
    //метод выводит информацию о песне
    func displayInfo() {
        print("Песня: \"\(title)\", исполнитель: \(artist)")
    }
}

//создаём объекты класса Songs
let songs1 = Songs(title: "Wonderwall", artist: "Oasis")
let songs2 = Songs(title: "Song 2", artist: "Blur")
let songs3 = Songs(title: "Take me out", artist: "Franz Ferdinand")
let songs4 = Songs(title: "Do you wanna", artist: "Arctic Monkeys")

// Выводим информацию о песнях
songs1.displayInfo()
songs2.displayInfo()
songs3.displayInfo()
songs4.displayInfo()


//объявляем класс Product, содержащий свойства name (название) и price (цена)
//класс, представляющий товар
class Products {
    var name: String    //название товара
    var price: Double  //цена товара
    
    //инициализатор (конструктор)
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
    
    //метод выводит информацию о товаре
    func displayInfo() {
        print("Товар: \(name), цена: \(price) ₽")
    }
}

//создаём объекты класса Product
let products1 = Products(name: "iPhone", price: 1099.99)
let products2 = Products(name: "Apple Watch", price: 499.50)
let products3 = Products(name: "AirPods", price: 299.99)

//выводим информацию о товарах
products1.displayInfo()
products2.displayInfo()
products3.displayInfo()


//создаём класс Rectangle, содержащий свойства width (ширина) и height (высота). Пишем метод, который определяет, является ли прямоугольник квадратом
//класс, представляющий прямоугольник
class Rctngle {
    var width: Double    //ширина
    var height: Double  //высота
    
    //инициализатор (конструктор)
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    //метод проверяет, является ли прямоугольник квадратом
    func isSquare() -> Bool {
        return width == height
    }
    
    //метод выводит информацию о прямоугольнике
    func displayInfo() {
        print("Прямоугольник: ширина = \(width), высота = \(height), является квадратом? \(isSquare() ? "Да" : "Нет")")
    }
}

//создаём объекты класса Rctngle
let rct1 = Rctngle(width: 5, height: 5)
let rct2 = Rctngle(width: 6, height: 4)

// Выводим информацию
rct1.displayInfo()   //Прямоугольник: ширина = 5.0, высота = 5.0, является квадратом? Да
rct2.displayInfo()  //Прямоугольник: ширина = 6.0, высота = 4.0, является квадратом? Нет


//определяем класс Employee, представляющий сотрудника с свойствами name (имя), position (должность) и salary(зарплата). Пишем метод, который увеличивает зарплату на определенный процент
//класс, представляющий сотрудника
class Employeer {
    var name: String       // имя сотрудника
    var position: String   // должность
    var salary: Double     // зарплата
    
    //инициализатор (конструктор)
    init(name: String, position: String, salary: Double) {
        self.name = name
        self.position = position
        self.salary = salary
    }
    
    //метод: увеличивает зарплату на указанный процент
    func raiseSalary(byPercent percent: Double) {
        guard percent > 0 else {
            print("Процент должен быть положительным.")
            return
        }
        salary += salary * percent / 100
        print("Зарплата сотрудника \(name) увеличена на \(percent)% — теперь \(salary) $")
    }
    
    //метод: выводит информацию о сотруднике
    func displayInfo() {
        print("Сотрудник: \(name), должность: \(position), зарплата: \(salary) $")
    }
}

//создаём сотрудников
let employeer1 = Employeer(name: "Steve", position: "Manual QA", salary: 2500)
let employeer2 = Employeer(name: "Stella", position: "ML Engineer", salary: 2600)
let employeer3 = Employeer(name: "John", position: "Backend Developer", salary: 3300)

//выводим информацию о сотрудниках
employeer1.displayInfo()
employeer2.displayInfo()
employeer3.displayInfo()

//увеличиваем зарплату
employeer1.raiseSalary(byPercent: 10)    // Зарплата сотрудника Steve увеличена на 10% — теперь 2750.0
employeer2.raiseSalary(byPercent: 10)   // Зарплата сотрудника Stella увеличена на 10% — теперь 2860.0
employeer3.raiseSalary(byPercent: 15) // Зарплата сотрудника John увеличена на 15% — теперь 3795.0


//создаём класс Triangle, содержащий свойства sideA, sideB и sideC (стороны треугольника). Пишем метод, который определяет, является ли треугольник прямоугольным
//класс, представляющий треугольник
class Triangl {
    var sideA: Double    // сторона A
    var sideB: Double   // сторона B
    var sideC: Double  // сторона C
    
    //инициализатор (конструктор)
    init(sideA: Double, sideB: Double, sideC: Double) {
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
    }
    
    //метод проверяет, является ли треугольник прямоугольным
    func isRightAngled() -> Bool {
        //сортируем стороны, чтобы гипотенуза была последней
        let sides = [sideA, sideB, sideC].sorted()
        let a = sides[0]
        let b = sides[1]
        let c = sides[2]  //гипотенуза
        
        return abs(c * c - (a * a + b * b)) < 1e-10
    }
    
    //метод выводит информацию о треугольнике
    func displayInfo() {
        print("Треугольник со сторонами \(sideA), \(sideB), \(sideC). Прямоугольный? \(isRightAngled() ? "Да" : "Нет")")
    }
}


//создаём треугольники
let triangl1 = Triangl(sideA: 3, sideB: 4, sideC: 5)
let triangl2 = Triangl(sideA: 5, sideB: 5, sideC: 5)

//выводим информацию
triangl1.displayInfo()   // Треугольник со сторонами 3.0, 4.0, 5.0. Прямоугольный? Да
triangl2.displayInfo()  // Треугольник со сторонами 5.0, 5.0, 5.0. Прямоугольный? Нет


//объявляем класс Bank, представляющий банк с свойствами name (название) и accounts (счета). Пишем метод, который возвращает общую сумму денег на всех счетах
//класс, представляющий банковский счет
class BanksAccount {
    var balance: Double
    var owner: String
    
    init(balance: Double, owner: String) {
        self.balance = balance
        self.owner = owner
    }
}

//класс, представляющий банк
class Banks {
    var name: String
    var accounts: [BanksAccount]
    
    //инициализатор
    init(name: String, accounts: [BanksAccount]) {
        self.name = name
        self.accounts = accounts
    }
    
    //метод возвращает общую сумму на всех счетах
    func totalBalance() -> Double {
        return accounts.reduce(0) { $0 + $1.balance }
    }
    
    //метод выводит информацию о банке
    func displayInfo() {
        print("Банк: \(name), количество счетов: \(accounts.count), общая сумма на всех счетах: \(totalBalance()) $")
    }
}

//создаём счета
let acc1 = BanksAccount(balance: 99, owner: "Mario")
let acc2 = BanksAccount(balance: 101, owner: "Adriana")
let acc3 = BanksAccount(balance: 100, owner: "Paolo")

//создаём банк
let banks = Banks(name: "UniCredit", accounts: [acc1, acc2, acc3])

//выводим информацию о банке
banks.displayInfo()  // Банк: UniCredit, количество счетов: 3, общая сумма на всех счетах: 300 $


//создаём класс Player, содержащий свойства name (имя) и score (счет). Пишем метод, который увеличивает счет игрока на определенное количество очков
//класс, представляющий игрока
class Player {
    var name: String    //имя игрока
    var score: Int     //счет игрока
    
    //инициализатор
    init(name: String, score: Int = 0) {
        self.name = name
        self.score = score
    }
    
    //метод увеличивает счет на указанное количество очков
    func addScore(points: Int) {
        guard points > 0 else {
            print("Количество очков должно быть положительным.")
            return
        }
        score += points
        print("После розыгрыша \(name) получил \(points) очков. Текущий счет: \(score)")
    }
    
    //метод выводит информацию об игроке
    func displayInfo() {
        print("Игрок: \(name), счет: \(score)")
    }
}

//создаём игроков
let player1 = Player(name: "Novak")
let player2 = Player(name: "Carlos", score: 15)

//выводим информацию
player1.displayInfo()   //Игрок: Novak, счет: 0
player2.displayInfo()  //Игрок: Carlos, счет: 15

//увеличиваем счет
player1.addScore(points: 15)   //Novak получил 15 очков. Текущий счет: 15
player2.addScore(points: 15)  //Carlos получил 15 очков. Текущий счет: 30


//объявляем класс Time, содержащий свойства hour (час), minute (минута) и second (секунда). Пишем метод, который прибавляет к текущему времени определенное количество секунд
//класс, представляющий время
class Time {
    var hour: Int
    var minute: Int
    var second: Int
    
    //инициализатор
    init(hour: Int, minute: Int, second: Int) {
        self.hour = hour
        self.minute = minute
        self.second = second
    }
    
    //метод прибавляет указанное количество секунд к текущему времени
    func addSeconds(_ secondsToAdd: Int) {
        guard secondsToAdd >= 0 else {
            print("Количество секунд должно быть неотрицательным.")
            return
        }
        
        var totalSeconds = hour * 3600 + minute * 60 + second + secondsToAdd
        
        hour = (totalSeconds / 3600) % 24
        totalSeconds %= 3600
        minute = totalSeconds / 60
        second = totalSeconds % 60
        
        print("Новое время: \(hour):\(minute):\(second)")
    }
    
    //метод выводит текущее время
    func displayTime() {
        print(String(format: "Текущее время: %02d:%02d:%02d", hour, minute, second))
    }
}


//создаём объект времени
let currentTime = Time(hour: 16, minute: 30, second: 45)
currentTime.displayTime()  //текущее время: 16:30:45

//прибавляем 3660 секунд
currentTime.addSeconds(3660)  //Новое время: 17:31:45


//создаём класс Rectangle, содержащий свойства width (ширина) и height (высота). Пишем метод, который возвращает периметр прямоугольника
//класс, представляющий прямоугольник
class Rectangl {
    var width: Double    //ширина
    var height: Double  //высота
    
    //инициализатор
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    //метод вычисляет периметр прямоугольника
    func perimeter() -> Double {
        return 2 * (width + height)
    }
    
    //метод выводит информацию о прямоугольнике
    func displayInfo() {
        print("Прямоугольник: ширина = \(width), высота = \(height), периметр = \(perimeter())")
    }
}

//создаём объекты класса Rectangle
let rec1 = Rectangl(width: 5, height: 10)
let rec2 = Rectangl(width: 2.5, height: 5.2)

//выводим информацию
rec1.displayInfo()   //Прямоугольник: ширина = 5.0, высота = 10.0, периметр = 30.0
rec2.displayInfo()  //Прямоугольник: ширина = 2.5, высота = 5.2, периметр = 15.4


//определяем класс Student, содержащий свойства name (имя) и grades (оценки). Пишем метод, который возвращает средний балл студента
//класс, представляющий студента
class Students {
    var name: String         //имя студента
    var grades: [Double]    //оценки
    
    //инициализатор
    init(name: String, grades: [Double]) {
        self.name = name
        self.grades = grades
    }
    
    //метод вычисляет средний балл
    func averageGrade() -> Double {
        guard !grades.isEmpty else {
            return 0.0
        }
        let total = grades.reduce(0, +)
        return total / Double(grades.count)
    }
    
    //метод выводит информацию о студенте
    func displayInfo() {
        print("Студент: \(name), средний балл: \(averageGrade())")
    }
}

//создаём студентов
let students1 = Students(name: "Martin", grades: [5, 4, 5, 3, 4])
let students2 = Students(name: "Leopold", grades: [4, 4, 4, 5, 5])
let students3 = Students(name: "Humfrid", grades: [4, 4, 4, 4, 4])

//выводим информацию
students1.displayInfo()   //Студент: Martin, средний балл: 4.2
students2.displayInfo()  //Студент: Leopold, средний балл: 4.4
students3.displayInfo() //Студент: Humfrid, средний балл: 4.0


//определяем класс Stack для работы со стеком. Пишем методы для добавления элемента в стек, удаления элемента из стека и получения элемента на вершине стека без его удаления
//класс, представляющий стек
class Stack<T> {
    private var elements: [T] = []  //внутренний массив для хранения элементов
    
    //метод: добавляет элемент на вершину стека
    func push(_ element: T) {
        elements.append(element)
        print("Элемент \(element) добавлен в стек")
    }
    
    //метод: удаляет элемент с вершины стека и возвращает его
    func pop() -> T? {
        guard !elements.isEmpty else {
            print("Стек пуст, удаление невозможно")
            return nil
        }
        let removed = elements.removeLast()
        print("Элемент \(removed) удален из стека")
        return removed
    }
    
    //метод: возвращает элемент на вершине стека без удаления
    func peek() -> T? {
        guard let top = elements.last else {
            print("Стек пуст")
            return nil
        }
        print("Верхний элемент стека: \(top)")
        return top
    }
    
    //метод: выводит весь стек
    func display() {
        print("Стек: \(elements)")
    }
}


//создаём стек целых чисел
let stack = Stack<Int>()

stack.push(11)
stack.push(55)
stack.push(99)

stack.display()   //Стек: [11, 55, 99]

stack.peek()     //Верхний элемент стека: 99

stack.pop()     // Элемент 99 удален из стека
stack.display()   // Стек: [11, 55]


//определяем класс Team с свойствами name (название) и массивом игроков (players). Пишем метод, который находит игрока с наибольшим счетом в команде
//класс, представляющий игрока
class Players {
    var name: String
    var score: Int
    
    init(name: String, score: Int = 0) {
        self.name = name
        self.score = score
    }
    
    func displayInfo() {
        print("Игрок: \(name), счет: \(score)")
    }
}

//класс, представляющий команду
class Team {
    var name: String
    var players: [Players]
    
    //инициализатор
    init(name: String, players: [Players]) {
        self.name = name
        self.players = players
    }
    
    //метод находит игрока с наибольшим счетом
    func topScorer() -> Players? {
        guard !players.isEmpty else {
            print("Команда пуста")
            return nil
        }
        let topPlayers = players.max { $0.score < $1.score }
        return topPlayers
    }
    
    //метод выводит информацию о команде
    func displayTeam() {
        print("Команда: \(name)")
        for players in players {
            players.displayInfo()
        }
    }
}

//создаём игроков
let players1 = Players(name: "Harry", score: 17)
let players2 = Players(name: "Andrew", score: 15)
let players3 = Players(name: "Scott", score: 11)

//создаём команду
let team = Team(name: "Bulldogs", players: [players1, players2, players3])

//выводим информацию о команде
team.displayTeam()

//находим игрока с наибольшим счетом
if let topPlayers = team.topScorer() {
    print("Игрок с наибольшим счетом: \(topPlayers.name), счет: \(topPlayers.score)")
}


//создаём класс InventoryItem с свойствами name (название) и quantity (количество). Пишем метод, который увеличивает количество товара на складе
//класс, представляющий товар на складе
class InventoryItem {
    var name: String       // название товара
    var quantity: Int     // количество на складе
    
    //инициализатор
    init(name: String, quantity: Int) {
        self.name = name
        self.quantity = quantity
    }
    
    //метод увеличивает количество товара
    func addQuantity(_ amount: Int) {
        guard amount > 0 else {
            print("Количество должно быть положительным.")
            return
        }
        quantity += amount
        print("Количество товара '\(name)' увеличено на \(amount). Текущее количество: \(quantity)")
    }
    
    //метод выводит информацию о товаре
    func displayInfo() {
        print("Товар: \(name), количество: \(quantity)")
    }
}

//создаём товары
let item1 = InventoryItem(name: "iPad Air", quantity: 10)
let item2 = InventoryItem(name: "iPad Pro", quantity: 15)
let item3 = InventoryItem(name: "iPad mini", quantity: 15)

//выводим информацию о товарах
item1.displayInfo()    //Товар: iPad Air, количество: 10
item2.displayInfo()   //Товар: iPad Pro, количество: 15
item3.displayInfo()  //Товар: iPad mini, количество: 15

//увеличиваем количество товара
item1.addQuantity(3)   //Количество товара iPad Air увеличено на 3. Текущее количество: 13
item2.addQuantity(7)  //Количество товара iPad Pro увеличено на 7. Текущее количество: 22
item3.addQuantity(5) //Количество товара iPad mini увеличено на 5. Текущее количество: 20
