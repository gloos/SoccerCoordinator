

import Foundation

let players = ["Joe Smith": [42, true, "Jim and Jan Smith"],
               "Jill Tanner": [36, true, "Clara Tanner"],
               "Bill Bon": [43, true, "Sara and Jenny Bon"],
               "Eva Gordon": [45, false, "Wendy and Mike Gordon"],
               "Matt Gill": [40, false, "Charles and Sylvia Gill"],
               "Kimmy Stein": [41, false, "Bill and Hillary Stein"],
               "Sammy Adams": [45, false, "Jeff Adams"],
               "Karl Saygan": [42, true, "Heather Biedsoe"],
               "Suzane Greenberg": [44, true, "Henrietta Dumas"],
               "Sal Dali": [41, false, "Gala Dali"],
               "Joe Kavalier": [39, false, "Sam and Elaine Kavalier"],
               "Ben Finkelstein": [44, false, "Aaron and Jill Finkelstein"],
               "Diego Soto": [41, true, "Robin and Sarika Soto"],
               "Chloe Alaska": [47, false, "David and Jamie Alaska"],
               "Arnold Willis": [43, false, "Claire Willis"],
               "Philip Helm": [44, true, "Thomas Helm and Eva Jones"],
               "Les Clay": [42, true, "Wynonna Brown"],
               "Herschel Krustofski": [45, true, "Hyman and Rachel Krustofski"]]

var sharks = [String: Array<AnyObject>]()
var dragons = [String: Array<AnyObject>]()
var raptors = [String: Array<AnyObject>]()
let sharksGame = "March 17 at 3PM"
let dragonsGame = "March 17 at 1PM"
let raptorsGame = "March 18 at 1PM"


func getNumberOfExperiencedPlayers() -> Int {
    var experiencedPlayers = 0
    
    for playerDetails in players.values {
        if playerDetails[1] == true {
            experiencedPlayers += 1
        }
    }
    return experiencedPlayers
}

var numberOfExperiencedPlayers = getNumberOfExperiencedPlayers()
var numberOfInexperiencedPlayers = players.count - numberOfExperiencedPlayers

for (key, value) in players {
    
    if sharks.count < players.count / 3 && sharks.count / 2 <= numberOfExperiencedPlayers / 3 && sharks.count / 2 <= numberOfInexperiencedPlayers / 3 {
        sharks[key] = value
    } else if dragons.count < players.count / 3 && dragons.count / 2 <= numberOfExperiencedPlayers / 3 && dragons.count / 2 <= numberOfInexperiencedPlayers / 3 {
        dragons[key] = value
    } else if raptors.count < players.count / 3 && raptors.count / 2 <= numberOfExperiencedPlayers / 3 && raptors.count / 2  <= numberOfInexperiencedPlayers / 3 {
        raptors[key] = value
    } else {
        print("We  can't allocate \(key, value) ")
    }
}


func printLetters() {
    for (key, value) in sharks {
        print("Hello \(value[2]), your son \(key) is playing his first game with the Sharks team! You should attend on \(sharksGame)")
    }
    
    for (key, value) in dragons {
        print("Hello \(value[2]), your son \(key) is playing his first game with the Sharks team! You should attend on \(dragonsGame)")
    }
    
    for (key, value) in raptors {
        print("Hello \(value[2]), your son \(key) is playing his first game with the Sharks team! You should attend on \(raptorsGame)")
    }
}

//Here I got the average heights of each team and stored them in an Array. I can't find a way to compare them all without writing a bunch of if statements.
func averageHeights() -> [Int] {
    var sharksTotalHeight: Int = 0
    var dragonsTotalHeight: Int = 0
    var raptorsTotalHeight: Int = 0
    
    //concept not introduced yet but this could be 'for (_, value) in sharks'
    for (key, value) in sharks {
        sharksTotalHeight += value[0] as! Int
    }
    for (key, value) in dragons {
        dragonsTotalHeight += value[0] as! Int
    }
    for (key, value) in raptors {
        raptorsTotalHeight += value[0] as! Int
    }
    
    
    return [sharksTotalHeight / (players.count / 3), dragonsTotalHeight / (players.count / 3), raptorsTotalHeight / (players.count / 3)]
}

printLetters()
