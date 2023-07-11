
// Теннисные турниры проводятся на разных покрытиях (хард, трава, грунт) и в разное время года

import Foundation

struct TennisTournament {
    
    var name: String
    var season: Season
    var court: Court
}


enum Season {
    case spring
    case summer
    case autumn
    case winter
}

enum Court {
    case clay
    case hard
    case grass
}


var AustralianOpen = TennisTournament(name: "Australian Open", season: .winter, court: .hard)
var RolandGarros = TennisTournament(name: "Roland Garros", season: .spring, court: .clay)
var Wimbledon = TennisTournament(name: "Wimbledon", season: .summer, court: .grass)
