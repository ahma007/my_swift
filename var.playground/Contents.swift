import XCPlayground

var greeting = "Hello, world!"
print(greeting)

print("Hello, world!")


//простые примеры переменных

var numOfTeam: Int = 14
numOfTeam = 16 //var можно менять

let tournSE: String = "Allsvenskan"
let tournNO = "Eliteserrien"

print("В", tournSE, "и", tournNO, "участвуют по", numOfTeam, "команд")

var tournFI = "SM-Liga"
print("Suomi ice-hockey league old naming -", tournFI)

tournFI = "Liiga"
print("Suomi ice-hockey league new naming - ", tournFI)

let tournCH = "National league" //let нельзя менять
print("Switzerland ice-hockey league naming - ", tournCH)

var tournDE = ["Bundesliga 1", "Bundesliga 2"] //массив (просто набор переменных), в kotlin вместо массивов списки
print("Bundesliga:", tournDE)

var tournDEnumOfteam = ["Bundesliga 1": "18 teams", "Bundesliga 2": "18 teams"] //словарь (набор переменных со значениями)
print("Bundesliga:", tournDEnumOfteam)



//Операции с переменными

//Арифметические операции
var a = 99
var b = 201

print("a+b=", a+b)
print("b-a=", b-a)
print("b/a=", b/a)
print("a*b=", a*b)
print("b%a=", b%a) //операции с % это операции с остатком от деления

//Присваивание с операцией
var x = 3
var y = 3
x += 3
y *= 3
print("x+=3", x) //операции типа += это операция с присваиванием, в данном случае с прибавлением, то есть x+=3 это x=x+3 (3+3)
print("y*=3", y) //операции типа *= это операция с присваиванием, в данном случае с умножением, то есть y*=3 это y=y*3 (3*3)

//Операции со строками
var team = "Arsenal"
var faplNumFour = "FAPL, " + team
print(faplNumFour)
