import UIKit

//ДЗ по 5-му занятию

//Closures

//замыкание, которое выводит на экран приветствие "Привет, мир!"
let greet: () -> Void = {
    print("Привет, мир!")
}

greet() //вызов замыкания

//замыкание, которое принимает два числа и возвращает их сумму
let sum: (Int, Int) -> Int = { (a, b) in
    return a + b
}

let result1 = sum(6, 66)
let result2 = sum(33, 999)

print("Сумма 6 и 66 = \(result1)")    //72
print("Сумма 33 и 999 = \(result2)") //1032

//замыкание, которое принимает строку и возвращает ее длину
let stringLength: (String) -> Int = { text in
    return text.count
}

let word1 = "Hello,"
let word2 = "world!"

print("Длина '\(word1)' = \(stringLength(word1))") // 6
print("Длина '\(word2)' = \(stringLength(word2))") // 6

//замыкание, которое принимает массив чисел и возвращает сумму всех элементов массива
let sumArray: ([Int]) -> Int = { numbers in
    return numbers.reduce(0, +)
}

let nums1 = [4, 8, 15, 16, 23, 42]
let nums2 = [10, -1, 99]
let nums3: [Int] = []

print("Сумма nums1 = \(sumArray(nums1))")   //108
print("Сумма nums2 = \(sumArray(nums2))")  //108
print("Сумма nums3 = \(sumArray(nums3))") //0

//замыкание, которое проверяет, является ли число четным, и возвращает true или false
let isEven: (Int) -> Bool = { number in
    return number % 2 == 0
}

let num1 = 96
let num2 = 69

print("\(num1) чётное? \(isEven(num1))")  //true
print("\(num2) чётное? \(isEven(num2))") //false

//замыкание, которое принимает два числа и возвращает большее из них
let maxOfTwo: (Int, Int) -> Int = { a, b in
    return a > b ? a : b
}

let num01 = 69
let num02 = 96
let num03 = -69
let num04 = -96

print("Большее из \(num01) и \(num02): \(maxOfTwo(num01, num02))")  //96
print("Большее из \(num03) и \(num04): \(maxOfTwo(num03, num04))") //-69

//замыкание, которое принимает строку и преобразует ее в верхний регистр
let toUpperCase: (String) -> String = { text in
    return text.uppercased()
}

let word01 = "Hello,"
let word02 = "world!"

print("'\(word01)' -> '\(toUpperCase(word01))'")
print("'\(word02)' -> '\(toUpperCase(word02))'")

//замыкание, которое принимает массив строк и выводит каждую строку на новой строке
let printEachLine: ([String]) -> Void = { strings in
    for str in strings {
        print(str)
    }
}

let words = ["Hell0", ",", "world", "!"]
let empty: [String] = []

print("Вывод массива words:")
printEachLine(words)

print("\nВывод пустого массива:")
printEachLine(empty)

//замыкание, которое принимает массив чисел и возвращает новый массив с квадратами всех элементов
let squares: ([Int]) -> [Int] = { numbers in
    return numbers.map { $0 * $0 }
}

let nums01 = [4, 8, 15, 16, 23, 42]
let nums02 = [-1, 0, 2]
let nums03: [Int] = []

print("Квадраты nums01: \(squares(nums01))")
print("Квадраты nums02: \(squares(nums02))")
print("Квадраты nums03: \(squares(nums03))") // []

//замыкание, которое принимает два числа и возвращает их разность
let difference: (Int, Int) -> Int = { a, b in
    return a - b
}

let num001 = 96
let num002 = 69
let num003 = -3

print("Разность \(num001) и \(num002): \(difference(num001, num002))")  //27
print("Разность \(num002) и \(num003): \(difference(num002, num003))") //72

//замыкание, которое принимает опциональную строку и возвращает ее длину, если она не nil
let optionalStringLength: (String?) -> Int = { text in
    return text?.count ?? 0
}

let str1: String? = "Hello,"
let str2: String? = nil
let str3: String? = "world!"

print("Длина str1: \(optionalStringLength(str1))")   //6
print("Длина str2: \(optionalStringLength(str2))")  //0
print("Длина str3: \(optionalStringLength(str3))") //6

//замыкание, которое принимает два числа и возвращает их произведение
let multiply: (Int, Int) -> Int = { a, b in
    return a * b
}

let number1 = 66
let number2 = 99
let number3 = -69
let number4 = 96

print("Произведение \(number1) и \(number2): \(multiply(number1, number2))")  //6534
print("Произведение \(number3) и \(number4): \(multiply(number3, number4))") //-6624

//замыкание, которое принимает массив строк и возвращает новый массив с длиной каждой строки
let lengthsOfStrings: ([String]) -> [Int] = { strings in
    return strings.map { $0.count }
}

let words01 = ["Toyota", "Honda", "Nissan", "Subaru", "Mitsubishi", "Mazda"]
let emptyWords01: [String] = []

print("Длины строк words01: \(lengthsOfStrings(words01))")
print("Длины пустого массива: \(lengthsOfStrings(emptyWords01))") //[]

//замыкание, которое принимает число и возвращает его в обратном порядке
let reverseNumber: (Int) -> Int = { number in
    let reversedString = String(String(number).reversed())
    return Int(reversedString) ?? 0
}

let nums001 = 666
let nums002 = 007
let nums003 = 0
let nums004 = 46664
let nums005 = 523416

print("Обратный порядок \(nums001): \(reverseNumber(nums001))")     //666
print("Обратный порядок \(nums002): \(reverseNumber(nums002))")    //7
print("Обратный порядок \(nums003): \(reverseNumber(nums003))")   // 0
print("Обратный порядок \(nums004): \(reverseNumber(nums004))")  //46664
print("Обратный порядок \(nums005): \(reverseNumber(nums005))") //614325

//замыкание, которое принимает массив чисел и возвращает новый массив с только положительными числами
let positiveNumbers: ([Int]) -> [Int] = { numbers in
    return numbers.filter { $0 > 0 }
}

let nmrs1 = [4, 8, -15, -16, 23, -42]
let nmrs2 = [-1, -2, -3]
let nmrs3: [Int] = []

print("Положительные числа nmrs1: \(positiveNumbers(nmrs1))")   //[4, 8, 23]
print("Положительные числа nmrs2: \(positiveNumbers(nmrs2))")  //[]
print("Положительные числа nmrs3: \(positiveNumbers(nmrs3))") //[]

//замыкание, которое принимает два числа и возвращает true, если они равны, и false в противном случае
let areEqual: (Int, Int) -> Bool = { a, b in
    return a == b
}

let nm01 = 69
let nm02 = 96
let nm03 = 69

print("\(nm01) и \(nm02) равны? \(areEqual(nm01, nm02))")  //false
print("\(nm01) и \(nm03) равны? \(areEqual(nm01, nm03))") //true

//замыкание, которое принимает строку и возвращает true, если она является палиндромом, и false в противном случае
let isPalindrome: (String) -> Bool = { text in
    let normalized = text.lowercased().replacingOccurrences(of: " ", with: "")
    return normalized == String(normalized.reversed())
}

let str01 = "тот или тот"
let str02 = "колос"
let str03 = "кот как ток"
let str04 = "и казак и казаки"

print("'\(str01)' палиндром? \(isPalindrome(str01))")    // true
print("'\(str02)' палиндром? \(isPalindrome(str02))")   // false
print("'\(str03)' палиндром? \(isPalindrome(str03))")  // true
print("'\(str04)' палиндром? \(isPalindrome(str04))") //true

//замыкание, которое принимает массив чисел и возвращает среднее значение
let average: ([Double]) -> Double = { numbers in
    guard !numbers.isEmpty else {
        return 0 // если массив пустой, возвращаем 0
    }
    let sum = numbers.reduce(0, +)
    return sum / Double(numbers.count)
}

let numer1 = [1.5, 2.6, 3.7, 4.8]
let numer2: [Double] = []
let numer3 = [11.11, 22.22, 33.33]

print("Среднее numer1: \(average(numer1))") //3.15
print("Среднее пустого массива: \(average(numer2))") //0
print("Среднее numer3: \(average(numer3))") //22.22

//замыкание, которое принимает массив чисел и возвращает массив только с четными числами
let evenNumbers: ([Int]) -> [Int] = { numbers in
    return numbers.filter { $0 % 2 == 0 }
}

let nms1 = [4, 8, 15, 16, 23, 42]
let nms2 = [9, 1, 1]
let nms3: [Int] = []

print("Чётные числа nms1: \(evenNumbers(nms1))")   //[4, 8, 16, 42]
print("Чётные числа nms2: \(evenNumbers(nms2))")  //[]
print("Чётные числа nms3: \(evenNumbers(nms3))") //[]

//замыкание, которое принимает строку и возвращает ее без пробелов
let removeSpaces: (String) -> String = { text in
    return text.replacingOccurrences(of: " ", with: "")
}

let str001 = "Hello, world!"
let str002 = " японские и корейские машины лучше, чем китайские "
let str003 = ""

print("'\(str001)' -> '\(removeSpaces(str001))'")   //"Hello,world!"
print("'\(str002)' -> '\(removeSpaces(str002))'")  //"японскиеикорейскиемашинылучше,чемкитайские"
print("'\(str003)' -> '\(removeSpaces(str003))'") // ""


//Перечисления (Enum)

//перечисление Weekdays, представляющее дни недели
enum Weekdays: String {
    case monday = "Понедельник"
    case tuesday = "Вторник"
    case wednesday = "Среда"
    case thursday = "Четверг"
    case friday = "Пятница"
    case saturday = "Суббота"
    case sunday = "Воскресенье"
}

let today: Weekdays = .wednesday
print("Сегодня: \(today.rawValue)") //выведет: Сегодня: Среда

//перечисление Months, включающее названия всех месяцев года
enum Months: String {
    case january = "Январь"
    case february = "Февраль"
    case march = "Март"
    case april = "Апрель"
    case may = "Май"
    case june = "Июнь"
    case july = "Июль"
    case august = "Август"
    case september = "Сентябрь"
    case october = "Октябрь"
    case november = "Ноябрь"
    case december = "Декабрь"
}

let currentMonth: Months = .october
print("Сейчас месяц: \(currentMonth.rawValue)") //выведет: Сейчас месяц: Октябрь

//перечисление Direction, представляющее четыре основных направления: север, юг, восток и запад
enum Direction {
    case north
    case south
    case east
    case west
}

var heading: Direction = .north
heading = .east

switch heading {
case .north:
    print("Идем на север")
case .south:
    print("Идем на юг")
case .east:
    print("Идем на восток")
case .west:
    print("Идем на запад")
}

//перечисление Coin, содержащее номиналы монет: penny, nickel, dime и quarter
enum Coin {
    case penny      // 1 цент
    case nickel    // 5 центов
    case dime     // 10 центов
    case quarter // 25 центов
}

let myCoin: Coin = .nickel

switch myCoin {
case .penny:
    print("Это 1 цент")
case .nickel:
    print("Это 5 центов")
case .dime:
    print("Это 10 центов")
case .quarter:
    print("Это 25 центов")
}

//перечисление TrafficLight, представляющее цвета светофора: красный, желтый и зеленый
enum TrafficLight {
    case red
    case yellow
    case green
}

let light: TrafficLight = .green

switch light {
case .red:
    print("Стоп")
case .yellow:
    print("Приготовься")
case .green:
    print("Можно идти")
}

//перечисление Suit, представляющее масти игральных карт: пики, червы, бубны и трефы
enum Suit {
    case spades     // Пики
    case hearts    // Червы
    case diamonds // Бубны
    case clubs   // Трефы
}

let cardSuit: Suit = .hearts

switch cardSuit {
case .spades:
    print("Масть: Пики")
case .hearts:
    print("Масть: Червы")
case .diamonds:
    print("Масть: Бубны")
case .clubs:
    print("Масть: Трефы")
}

//перечисление Daytime, содержащее периоды суток: утро, день, вечер и ночь
enum Daytime {
    case morning    // Утро
    case afternoon // День
    case evening  // Вечер
    case night   // Ночь
}

let currentTime: Daytime = .evening

switch currentTime {
case .morning:
    print("Сейчас утро")
case .afternoon:
    print("Сейчас день")
case .evening:
    print("Сейчас вечер")
case .night:
    print("Сейчас ночь")
}

//перечисление DirectionArrow, представляющее стрелки направлений: вверх, вниз, влево и вправо
enum DirectionArrow {
    case up       //вверх
    case down    //вниз
    case left   //влево
    case right //вправо
}

let arrow: DirectionArrow = .up

switch arrow {
case .up:
    print("Стрелка вверх")
case .down:
    print("Стрелка вниз")
case .left:
    print("Стрелка влево")
case .right:
    print("Стрелка вправо")
}

//перечисление Weather, содержащее погодные условия: солнечно, дождливо, облачно и ветрено
enum Weather {
    case sunny      // Солнечно
    case rainy     // Дождливо
    case cloudy   // Облачно
    case windy   // Ветрено
}

let todayWeather: Weather = .rainy

switch todayWeather {
case .sunny:
    print("Сегодня солнечно")
case .rainy:
    print("Сегодня дождливо")
case .cloudy:
    print("Сегодня облачно")
case .windy:
    print("Сегодня ветрено")
}

//перечисление Season, представляющее времена года: весна, лето, осень и зима
enum Season {
    case spring      // Весна
    case summer     // Лето
    case autumn    // Осень
    case winter   // Зима
}

let currentSeason: Season = .autumn

switch currentSeason {
case .spring:
    print("Сейчас весна")
case .summer:
    print("Сейчас лето")
case .autumn:
    print("Сейчас осень")
case .winter:
    print("Сейчас зима")
}

//перечисление CardSuit, представляющее масти игральных карт: пики, червы, бубны и трефы. Пишем функцию, которая принимает масть карты и возвращает ее название на русском
enum CardSuit {
    case spades    // Пики
    case hearts    // Червы
    case diamonds  // Бубны
    case clubs     // Трефы
}

//функция для получения названия масти на русском
func suitName(_ suit: CardSuit) -> String {
    switch suit {
    case .spades:
        return "Пики"
    case .hearts:
        return "Червы"
    case .diamonds:
        return "Бубны"
    case .clubs:
        return "Трефы"
    }
}

let myCardSuit: CardSuit = .hearts
print("Масть карты: \(suitName(myCardSuit))") //выведет: Масть карты: Червы


//перечисление ShapeType, представляющее различные типы геометрических фигур: круг, квадрат, треугольник и прямоугольник. Пишем функцию, которая принимает тип фигуры и возвращает ее площадь
enum ShapeType {
    case circle(radius: Double)
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    case triangle(base: Double, height: Double)
}

//функция для вычисления площади
func area(of shape: ShapeType) -> Double {
    switch shape {
    case .circle(let radius):
        return Double.pi * radius * radius
    case .square(let side):
        return side * side
    case .rectangle(let width, let height):
        return width * height
    case .triangle(let base, let height):
        return 0.5 * base * height
    }
}

let myCircle = ShapeType.circle(radius: 5)
print("Площадь круга: \(area(of: myCircle))") //площадь круга: 78.5398...

let myRectangle = ShapeType.rectangle(width: 4, height: 6)
print("Площадь прямоугольника: \(area(of: myRectangle))") //площадь прямоугольника: 24

//перечисление TrafficSignal, содержащее типы светофорных сигналов: красный, желтый и зеленый. Пишем функцию, которая принимает сигнал и возвращает время его длительности в секундах
enum TrafficSignal {
    case red
    case yellow
    case green
}

// Функция для получения времени сигнала в секундах
func signalDuration(_ signal: TrafficSignal) -> Int {
    switch signal {
    case .red:
        return 60     //красный свет — 60 секунд
    case .yellow:
        return 5     //жёлтый свет — 5 секунд
    case .green:
        return 55   //зеленый свет — 55 секунд
    }
}

let currentSignal: TrafficSignal = .green
print("Время сигнала: \(signalDuration(currentSignal)) секунд") //выведет: Время сигнала: 55 секунд

//перечисление DayType, представляющее дни недели: будний день и выходной день. Пишем функцию, которая принимает день недели и возвращает его тип
enum DayOfWeek {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}

enum DayType {
    case weekday   //будний день
    case weekend  //выходной день
}

//функция для определения типа дня
func getDayType(for day: DayOfWeek) -> DayType {
    switch day {
    case .saturday, .sunday:
        return .weekend
    default:
        return .weekday
    }
}

let yesterday: DayOfWeek = .saturday
let typeOfYesterday = getDayType(for: yesterday)

switch typeOfYesterday {
case .weekday:
    print("Завтра будний день")
case .weekend:
    print("Завтра выходной день")
} //выведет: Завтра выходной день

//перечисление Temperature, содержащее типы температур: низкая, средняя и высокая. Пишем функцию, которая принимает температуру в градусах Цельсия и возвращает ее тип
enum Temperature {
    case low      // Низкая
    case medium   // Средняя
    case high     // Высокая
}

//функция для определения типа температуры
func getTemperatureType(for celsius: Double) -> Temperature {
    switch celsius {
    case ..<10:       //меньше 10°C
        return .low
    case 10..<25:   //от 10°C до 24.9°C
        return .medium
    default:       //25°C и выше
        return .high
    }
}

let currentTemp = 18.5
let tempType = getTemperatureType(for: currentTemp)

switch tempType {
case .low:
    print("Температура низкая")
case .medium:
    print("Температура средняя")
case .high:
    print("Температура высокая")
} //выведет: Температура средняя

//перечисление TrafficLightState, представляющее состояния светофора: включен, выключен и мигающий. Пишем функцию, которая принимает состояние светофора и возвращает соответствующее ему описание
enum TrafficLightState {
    case on       // Включен
    case off      // Выключен
    case blinking // Мигающий
}

//функция для получения описания состояния
func describeTrafficLight(_ state: TrafficLightState) -> String {
    switch state {
    case .on:
        return "Светофор включен"
    case .off:
        return "Светофор выключен"
    case .blinking:
        return "Светофор мигает"
    }
}

let currentState: TrafficLightState = .blinking
print(describeTrafficLight(currentState)) //выведет: Светофор мигает

//перечисление DirectionType, содержащее направления движения: вперед, назад, влево и вправо. Пишем функцию, которая принимает два направления и определяет, являются ли они противоположными
enum DirectionType {
    case forward
    case backward
    case left
    case right
}

//функция для проверки противоположности направлений
func areOpposite(_ dir1: DirectionType, _ dir2: DirectionType) -> Bool {
    switch (dir1, dir2) {
    case (.forward, .backward), (.backward, .forward):
        return true
    case (.left, .right), (.right, .left):
        return true
    default:
        return false
    }
}

let firstDirection: DirectionType = .forward
let secondDirection: DirectionType = .backward

if areOpposite(firstDirection, secondDirection) {
    print("Направления противоположные")
} else {
    print("Направления не противоположные")
} //выведет: Направления противоположные

//перечисление OperatingSystem, представляющее операционные системы: iOS, Android, Windows и macOS. Пишем функцию, которая принимает операционную систему и возвращает ее популярность среди пользователей
enum OperatingSystem {
    case iOS
    case android
    case windows
    case macOS
}

//функция для получения популярности ОС
func osPopularity(_ os: OperatingSystem) -> Int {
    switch os {
    case .iOS:
        return 25      // Например, 25%
    case .android:
        return 70     // Например, 65%
    case .windows:
        return 80    // Например, 80%
    case .macOS:
        return 15   // Например, 15%
    }
}

let myOS: OperatingSystem = .iOS
print("Популярность \(myOS) среди пользователей: \(osPopularity(myOS))%") //выведет: Популярность iOS среди пользователей: 25%

//перечисление PaymentMethod, содержащее способы оплаты: наличные, кредитная карта, электронные деньги и банковский перевод. Пишем функцию, которая принимает способ оплаты и возвращает его комиссию
enum PaymentMethod {
    case cash             // Наличные
    case creditCard      // Кредитная карта
    case eWallet        // Электронные деньги
    case bankTransfer  // Банковский перевод
}

//функция для получения комиссии
func paymentFee(for method: PaymentMethod) -> Double {
    switch method {
    case .cash:
        return 0.0        // Наличные — 0.0%  без комиссии
    case .creditCard:
        return 1.5       // Кредитная карта — 1.5%
    case .eWallet:
        return 1.0      // Электронные деньги — 1%
    case .bankTransfer:
        return 0.5     // Банковский перевод — 0.5%
    }
}

let method: PaymentMethod = .cash
print("Комиссия за оплату: \(paymentFee(for: method))%") //выведет: Комиссия за оплату: 0.0%

//перечисление WeatherCondition, содержащее погодные условия: ясно, облачно, дождь и снег. Пишем функцию, которая принимает погодные условия и возвращает рекомендацию по одежде.
enum WeatherCondition {
    case clear     // Ясно
    case cloudy    // Облачно
    case rain      // Дождь
    case snow      // Снег
}

//функция для рекомендации одежды
func clothingRecommendation(for weather: WeatherCondition) -> String {
    switch weather {
    case .clear:
        return "Можно одеть лёгкую одежду"
    case .cloudy:
        return "Возьмите лёгкую куртку"
    case .rain:
        return "Наденьте плащ или возьмите зонт"
    case .snow:
        return "Теплая куртка, шапка и перчатки обязательны"
    }
}

let todayWeathers: WeatherCondition = .rain
print(clothingRecommendation(for: todayWeathers)) //выведет: Наденьте плащ или возьмите зонт
