
import Foundation

func authorization () -> User {
    
    print("Добро пожаловать! Введите ваше имя: ", terminator: "")
    let name = readLine()!
    print("Введите вашу фамилию: ", terminator: "")
    let surname = readLine()!
    var gender = ""
    while true {
        print("Введите ваш пол (м/ж) ", terminator: "")
        let gen = readLine()!
        if gen == "м" || gen == "ж" {
            gender = gen
            break
        }
        else {
            print("Неправильный ввод")
        }
    }
        
        if gender == "м" {
            return User(name: name, surname: surname, gender: .male)
        }
    else { return User(name: name, surname: surname, gender: .female) }
            
    
    //return User(name: name, surname: surname, gender: .male)
}

var database = Database()
var user1 = authorization()
database.addUser(user: user1)
var user2 = authorization()
database.addUser(user: user2)
var user3 = authorization()
database.addUser(user: user3)

dump(database)

var tech1 = Tech(name: "Телевизор", year: 2022, state: .new)
var tech2 = Tech(name: "Чайник", year: 2007, state: .used)
var tech3 = Tech(name: "Микроволновка", year: 2023, state: .new)
var tech4 = Tech(name: "Компьютер", year: 2023, state: .new)
var tech5 = Tech(name: "Пылесос", year: 2020, state: .used)

var stock = Stock()
stock.techs = [tech1, tech2, tech3, tech4, tech5]
stock.filterByState()
