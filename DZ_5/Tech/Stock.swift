
import Foundation

class Stock {
    var techs: [Tech] = []
    
    func filterByState() {
        while true {
            print("Какую технику показать? Новая - нажмите 1, Б/У - нажмите 2: ", terminator: "")
            let answer = readLine()!
            if answer != "1" && answer != "2" {
                print("Введите корректную цифру!")
                continue
            }
            else {
                for tech in techs {
                    if answer == "1" && tech.state == .new {
                        print(tech.name)
                    }
                    if answer == "2" && tech.state == .used {
                        print(tech.name)
                    }
                }
                break
            }
        }
    }
    
}
