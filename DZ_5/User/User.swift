

import Foundation

struct User {
    var name: String
    var surname: String
    var gender: Gender
    
}


enum Gender: String {
    case male = "м"
    case female = "ж"
}


