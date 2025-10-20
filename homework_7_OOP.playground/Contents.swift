import UIKit

//Домашняя работа по 7-й лекции

//Абстракция (протоколы)

//создаём протокол Drawable, который имеет метод draw(). Создаём класс Circle с методом draw(), который печатает "Рисуем круг"
//определяем протокол Drawable
protocol Drawable {
    func draw()
}

//класс Circle реализует протокол Drawable
class Circle: Drawable {
    func draw() {
        print("Рисуем круг")
    }
}

let circle = Circle()
circle.draw()  //Выведет: Рисуем круг


//создаём протокол Playable, который имеет методы play() и stop() , а также read-only поле isPlaying. Создаём класс MusicPlayer, который реализует этот протокол (методы переключают значение флага)
//определяем протокол Playable
protocol Playable {
    var isPlaying: Bool { get }   //только для чтения
    func play()
    func stop()
}

//класс MusicPlayer реализует протокол Playable
class MusicPlayer: Playable {
    private(set) var isPlaying: Bool = false  //свойство можно читать извне, но менять — только внутри класса
    
    func play() {
        if !isPlaying {
            isPlaying = true
            print("Воспроизведение началось")
        } else {
            print("Музыка уже играет")
        }
    }
    
    func stop() {
        if isPlaying {
            isPlaying = false
            print("Воспроизведение остановлено")
        } else {
            print("Музыка уже остановлена")
        }
    }
}

let player = MusicPlayer()

player.play()  //воспроизведение началось
print("Состояние: \(player.isPlaying)")  //true

player.stop()  //воспроизведение остановлено
print("Состояние: \(player.isPlaying)")  //false


//создаём протокол Animal, который имеет свойство name и метод makeSound(). Создаём класс Dog, который реализует этот протокол
//определяем протокол Animal
protocol Animal {
    var name: String { get }   //свойство только для чтения
    func makeSound()          //метод, который должен быть реализован
}

//класс Dog реализует протокол Animal
class Dog: Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func makeSound() {
        print("\(name) говорит: Гав-гав!")
    }
}

let dog = Dog(name: "Шарик")
dog.makeSound()  //Шарик говорит: Гав-гав!


//создаём протокол Resizable, который имеет метод resize(to:) и read-only полями width, height. Создаём класс Image, который реализует этот протокол (меняет размеры)
//определяем протокол Resizable
protocol Resizable {
    var width: Int { get }      // ширина (только для чтения)
    var height: Int { get }    // высота (только для чтения)
    
    func resize(to newWidth: Int, _ newHeight: Int)
}

//класс Image реализует протокол Resizable
class Image: Resizable {
    private(set) var width: Int
    private(set) var height: Int
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
    
    func resize(to newWidth: Int, _ newHeight: Int) {
        guard newWidth > 0, newHeight > 0 else {
            print("Размеры должны быть положительными числами.")
            return
        }
        width = newWidth
        height = newHeight
        print("Изображение изменено до \(width)x\(height)")
    }
}

let image = Image(width: 1920, height: 1080)
print("Исходные размеры: \(image.width)x\(image.height)")  //1920x1080

image.resize(to: 1280, 720)  //Изображение изменено до 1280x720
print("Новые размеры: \(image.width)x\(image.height)")      //1280x720


//Создаём протокол Acceleratable, который имеет метод accelerate() и поле speed. Создаём класс Car, который реализует этот протокол (увеличивает скорость на 10)
//определяем протокол Acceleratable
protocol Acceleratable {
    var speed: Int { get }    //свойство скорости (только для чтения)
    func accelerate()        //метод для увеличения скорости
}

//класс Car реализует протокол Acceleratable
class Car: Acceleratable {
    private(set) var speed: Int = 0    //скорость можно читать снаружи, но менять — только внутри класса
    
    func accelerate() {
        speed += 10
        print("Машина ускорилась. Текущая скорость: \(speed) км/ч")
    }
}

let car = Car()
print("Начальная скорость: \(car.speed) км/ч")  // 0 км/ч

car.accelerate()   //Машина ускорилась. Текущая скорость: 10 км/ч
car.accelerate()  //Машина ускорилась. Текущая скорость: 20 км/ч


//создаём протокол Identifiable, который имеет свойство id. Создаём структуру Person, которая реализует этот протокол
//определяем протокол Identifiable
protocol Identifiable {
    var id: String { get }   //уникальный идентификатор (только для чтения)
}

//структура Person реализует протокол Identifiable
struct Person: Identifiable {
    var id: String
    var name: String
    var age: Int
}

let person1 = Person(id: "001", name: "Andrew", age: 27)
let person2 = Person(id: "002", name: "Mark", age: 25)

print("Человек: \(person1.name), ID: \(person1.id), Возраст: \(person1.age)") //Человек: Andrew, ID: 001, Возраст: 27
print("Человек: \(person2.name), ID: \(person2.id), Возраст: \(person2.age)") //Человек: Mark, ID: 002, Возраст: 25


//создаём протокол Sortable, который имеет метод sort(). Создаём класс ArrayHandler, который реализует этот протокол
//определяем протокол Sortable
protocol Sortable {
    func sort()
}

//rласс ArrayHandler реализует протокол Sortable
class ArrayHandler: Sortable {
    var numbers: [Int]
    
    init(numbers: [Int]) {
        self.numbers = numbers
    }
    
    //реализация метода sort() — сортировка массива
    func sort() {
        numbers.sort()
        print("Отсортированный массив: \(numbers)")
    }
}

let handler = ArrayHandler(numbers: [8, 15, 16, 42, 4, 23])
print("Исходный массив: \(handler.numbers)")  //[8, 15, 16, 42, 4, 23]

handler.sort()  //Отсортированный массив: [4, 8, 15, 16, 23, 42]


//создаём протокол Drawable, который имеет метод draw() и свойство color. Создаём класс Square, который реализует этот протокол
//определяем протокол Drawable
protocol Drawables {
    var color: String { get }   //свойство цвета (только для чтения)
    func draw()                //метод для рисования
}

//класс Square реализует протокол Drawable
class Square: Drawables {
    var color: String           //цвет квадрата
    var sideLength: Double     //длина стороны
    
    init(color: String, sideLength: Double) {
        self.color = color
        self.sideLength = sideLength
    }
    
    func draw() {
        print("Рисуем квадрат цвета \(color) со стороной \(sideLength)")
    }
}

let redSquare = Square(color: "красный", sideLength: 4.0)
redSquare.draw()  //Рисуем квадрат цвета красный со стороной 4.0


//создаём протокол Playable, который имеет свойство volume и методы play() и setVolume(to:). Создаём класс MediaPlayer, который реализует этот протокол
//определяем протокол Playable
protocol Playables {
    var volume: Int { get }                 //громкость (только для чтения)
    func play()                            //метод для воспроизведения
    func setVolume(to newValue: Int)      //метод для изменения громкости
}

//класс MediaPlayer реализует протокол Playable
class MediaPlayer: Playables {
    private(set) var volume: Int = 50      //громкость по умолчанию (0–100)
    private var isPlaying: Bool = false   //флаг воспроизведения
    
    func play() {
        if !isPlaying {
            isPlaying = true
            print("Воспроизведение началось (громкость: \(volume))")
        } else {
            print("Музыка уже играет")
        }
    }
    
    func setVolume(to newValue: Int) {
        guard (0...100).contains(newValue) else {
            print("Громкость должна быть в диапазоне от 0 до 100.")
            return
        }
        volume = newValue
        print("Громкость установлена на \(volume)")
    }
}


let players = MediaPlayer()

players.play()                 //Воспроизведение началось (громкость: 50)
players.setVolume(to: 80)     //Громкость установлена на 80
players.play()               //Музыка уже играет
players.setVolume(to: 120)  //Громкость должна быть в диапазоне от 0 до 100


//создаём протокол Printable, который имеет метод print(). Создаём класс Document, который реализует этот протокол
//определяем протокол Printable
protocol Printable {
    func printContent()   //метод для печати содержимого
}

//класс Document реализует протокол Printable
class Document: Printable {
    var title: String
    var content: String
    
    init(title: String, content: String) {
        self.title = title
        self.content = content
    }
    
    func printContent() {
        print("Печатаем документ '\(title)':\n\(content)")
    }
}

let doc = Document(title: "Отчёт", content: "Это пример содержимого документа.")
doc.printContent() //Выводим: Печатаем документ 'Отчёт': и Это пример содержимого документа


//Создаём протокол Shape, который имеет метод calculateArea(). Создаём класс Rectangle, который реализует этот протокол
//определяем протокол Shape
protocol Shape {
    func calculateArea() -> Double   //метод для вычисления площади
}

//класс Rectangle реализует протокол Shape
class Rectangle: Shape {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func calculateArea() -> Double {
        return width * height
    }
}

let rectangle = Rectangle(width: 5.0, height: 10.0)
print("Площадь прямоугольника: \(rectangle.calculateArea())")  //Площадь прямоугольника: 50.0


//Создаём протокол Downloadable, который имеет метод download(). Создаём класс File, который реализует этот протокол
//определяем протокол Downloadable
protocol Downloadable {
    func download()   //метод для скачивания
}

//класс File реализует протокол Downloadable
class File: Downloadable {
    var name: String
    var size: Int     //размер файла в килобайтах
    
    init(name: String, size: Int) {
        self.name = name
        self.size = size
    }
    
    func download() {
        print("⬇️ Скачивание файла '\(name)' размером \(size) КБ")
    }
}

let file = File(name: "Документ.pdf", size: 1024)
file.download()  //скачивание файла 'Документ.pdf' размером 1024 КБ


//Создаём протокол Playable, который имеет методы play(), pause() и stop(). Создаём класс AudioPlayer, который реализует этот протокол
//определяем протокол Playable
protocol Playabl {
    func play()      //воспроизведение
    func pause()    //пауза
    func stop()    //остановка
}

//класс AudioPlayer реализует протокол Playables
class AudioPlayer: Playabl {
    private var isPlaying = false
    
    func play() {
        guard !isPlaying else {
            print("Музыка уже играет")
            return
        }
        isPlaying = true
        print("Воспроизведение началось")
    }
    
    func pause() {
        guard isPlaying else {
            print("Музыка уже на паузе")
            return
        }
        isPlaying = false
        print("Воспроизведение приостановлено")
    }
    
    func stop() {
        if isPlaying {
            isPlaying = false
        }
        print("Воспроизведение остановлено")
    }
}

let playerss = AudioPlayer()

playerss.play()      //Воспроизведение началось
playerss.pause()    //Воспроизведение приостановлено
playerss.play()    //Воспроизведение началось
playerss.stop()   //Воспроизведение остановлено


//Создаём протокол Eatable, который имеет метод eat(). Создаём класс Fruit, который реализует этот протокол
//определяем протокол Eatable
protocol Eatable {
    func eat()   //метод для "поедания"
}

//класс Fruit реализует протокол Eatable
class Fruit: Eatable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func eat() {
        print("Вы едите фрукт: \(name)")
    }
}

let apple = Fruit(name: "Яблоко")
apple.eat()  //Вы едите фрукт: Яблоко

let banana = Fruit(name: "Банан")
banana.eat() //Вы едите фрукт: Банан


//Создаём протокол Loggable, который имеет метод log(message:). Создаём класс Logger, который реализует этот протокол
//определяем протокол Loggable
protocol Loggable {
    func log(message: String)   //метод для логирования
}

//класс Logger реализует протокол Loggable
class Logger: Loggable {
    func log(message: String) {
        let timestamp = Date()
        print("[\(timestamp)] LOG: \(message)")
    }
}

let logger = Logger()

logger.log(message: "Программа запущена") //[2025-10-19 14:23:45 +0000] LOG: Программа запущена
logger.log(message: "Произошла ошибка") //[2025-10-19 14:23:46 +0000] LOG: Произошла ошибка


//Создаём протокол Printable, который имеет свойство text и метод printText(). Создаём класс Printer, который реализует этот протокол
//определяем протокол Printable
protocol Printables {
    var text: String { get set }   //свойство текста
    func printText()              //метод для печати текста
}

//класс Printer реализует протокол Printable
class Printer: Printables {
    var text: String
    
    init(text: String) {
        self.text = text
    }
    
    func printText() {
        print("🖨️ Печать текста: \(text)")
    }
}

let printer = Printer(text: "Hello, Swift!")
printer.printText()  //Печать текста: Hello, Swift!

printer.text = "Новый текст"
printer.printText()  //Печать текста: Новый текст


//Создаём протокол Playable, который имеет методы play(), pause() и stop(). Создаём класс VideoPlayer, который реализует этот протокол
//определяем протокол Playabless
protocol Playabless {
    func play()      // воспроизведение
    func pause()    // пауза
    func stop()    // остановка
}

//класс VideoPlayer реализует протокол Playabless
class VideoPlayer: Playabless {
    private var isPlaying = false
    
    func play() {
        guard !isPlaying else {
            print("Видео уже воспроизводится")
            return
        }
        isPlaying = true
        print("Воспроизведение видео началось")
    }
    
    func pause() {
        guard isPlaying else {
            print("Видео уже на паузе")
            return
        }
        isPlaying = false
        print("Видео приостановлено")
    }
    
    func stop() {
        if isPlaying {
            isPlaying = false
        }
        print("Воспроизведение видео остановлено")
    }
}

let videoPlayer = VideoPlayer()

videoPlayer.play()     //Воспроизведение видео началось
videoPlayer.pause()   //Видео приостановлено
videoPlayer.play()   //Воспроизведение видео началось
videoPlayer.stop()  //Воспроизведение видео остановлено


//Создаём протокол Searchable, который имеет метод search(keyword:). Создаём класс SearchEngine, который реализует этот протокол
//определяем протокол Searchable
protocol Searchable {
    func search(keyword: String)   //метод для поиска
}

//класс SearchEngine реализует протокол Searchable
class SearchEngine: Searchable {
    var data: [String]
    
    init(data: [String]) {
        self.data = data
    }
    
    func search(keyword: String) {
        let results = data.filter { $0.localizedCaseInsensitiveContains(keyword) }
        if results.isEmpty {
            print("По запросу '\(keyword)' ничего не найдено")
        } else {
            print("Результаты поиска для '\(keyword)': \(results)")
        }
    }
}

let searchEngine = SearchEngine(data: ["Swift", "Python", "Java", "C", "JavaScript"])

searchEngine.search(keyword: "java")    //Результаты поиска для 'java': ["Java", "JavaScript"]
searchEngine.search(keyword: "kotlin") //По запросу 'ruby' ничего не найдено


//Создаём протокол Translatable, который имеет метод translate(text:). Создаём класс Translator, который реализует этот протокол
//определяем протокол Translatable
protocol Translatable {
    func translate(text: String) -> String   //метод для перевода текста
}

//класс Translator реализует протокол Translatable
class Translator: Translatable {
    var language: String   //язык перевода
    
    init(language: String) {
        self.language = language
    }
    
    func translate(text: String) -> String {
        //Для простого примера будем возвращать текст с пометкой языка
        return "[\(language)]: \(text)"
    }
}

let translator = Translator(language: "EN")
let translatedText = translator.translate(text: "Привет, мир!")
print(translatedText)  //[EN]: Привет, мир!

let translatorIT = Translator(language: "IT")
print(translatorIT.translate(text: "Привет, мир!"))  //[IT]: Привет, мир!


//Создаём протокол Runnable, который имеет метод run(). Создаём класс Program, который реализует этот протокол
//определяем протокол Runnable
protocol Runnable {
    func run()   //метод для запуска программы
}

//класс Program реализует протокол Runnable
class Program: Runnable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func run() {
        print("Программа '\(name)' запущена")
    }
}

let program = Program(name: "Notes")
program.run()  //Программа 'Notes' запущена

let program2 = Program(name: "Message")
program2.run() //Программа 'Message' запущена
