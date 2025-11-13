import UIKit

var greeting = "Hello, playground"
print(greeting)

//Домашнее задание - Вывести строку с целым количеством часов минут и секунд

var secondsTotal = 654321
var hours = secondsTotal / 3600
var minutes = (secondsTotal - hours * 3600) / 60
var seconds = secondsTotal - hours * 3600 - minutes * 60
print("\(secondsTotal) секунд это \(hours) часов \(minutes) минут \(seconds) секунд")

