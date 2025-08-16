import UIKit

var greeting = "Hello, world and swift!"
print (greeting)

// Операции с Int (Int- это целые числа)
var intValue = 17 //или var intValue: int = 17

// Математические операции с Int
let sum_intValue = intValue + 2
let min_intValue = intValue - 2
let umn_intValue = intValue * 2
let del_intValue = intValue / 2
let ost_intValue = intValue % 2

//для вывода любого значения просто вводим print и в скобках указываем то что нужно вывести например print(intValue) выведет значение 17, т.е. значение которое было присвоенно переменной intValue

// Операции сравнения с Int
let ravno_intValue = intValue == 17
let ner_intValue = intValue != 17
let bol_intValue = intValue > 17
let men_intValue = intValue < 17

//в случае с операциями сравнений print выводит нам буллевые значения (true или false) для заданной переменной

// Операции с Float
let pi_Value: Float = 3.14 //дробные числа

// Математические операции с Float
let sum_pi_Value: Float = pi_Value + 2
let min_pi_Value: Float = pi_Value - 2
let umn_pi_Value: Float = pi_Value * 2
let del_pi_Value: Float = pi_Value / 2

//тут все аналогично как и с int (целыми числами)

// Операции сравнения с Float
let ravno_pi_Value: Bool = pi_Value == 3.14
let ner_pi_Value: Bool = pi_Value != 3.14
let bol_pi_Value: Bool = pi_Value > 3.14
let men_pi_Value: Bool = pi_Value < 3.14

// Операции с Double (тоже дробные числа)
let drob_Value: Double = 4.4444

// Математические операции с Double
let sum_drob_Value: Double = drob_Value + 2
let min_drob_Value: Double = drob_Value - 2
let umn_drob_Value: Double = drob_Value * 2
let del_drob_Value: Double = drob_Value / 2

// Операции сравнения с Double
let rav_drob_Value = drob_Value == 4.4444 //:Bool не обязательно ставить
let ner_drob_Value = drob_Value != 4.4444
let bol_drob_Value = drob_Value > 4.4444
let men_drob_Value = drob_Value < 4.4444

//Строки и символы
var hi = "Hello, world!" //или var hi: String = "Hello, world!"
print(hi)

hi += ", how are you?"
print(hi)

hi += "??"
print(hi)

var symbol: Character = "!"
print(symbol)






