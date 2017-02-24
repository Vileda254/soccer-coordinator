// Create an array of dictionaries for storing all the players and related information

let players: [[String: String]] = [
    [
        "Name": "Joe Smith",
        "Height (inches)": "42",
        "Soccer Experience": "YES",
        "Guardian Name(s)": "Jim and Jan Smith"
    ],
    [
        "Name": "Jill Tanner",
        "Height (inches)": "36",
        "Soccer Experience": "YES",
        "Guardian Name(s)": "Clara Tanner"
    ],
    [
        "Name": "Bill Bon",
        "Height (inches)": "43",
        "Soccer Experience": "YES",
        "Guardian Name(s)": "Sara and Jenny Bon"
    ],
    [
        "Name": "Eva Gordon",
        "Height (inches)": "45",
        "Soccer Experience": "NO",
        "Guardian Name(s)": "Wendy and Mike Gordon"
    ],
    [
        "Name": "Matt Gill",
        "Height (inches)": "40",
        "Soccer Experience": "NO",
        "Guardian Name(s)": "Charles and Sylvia Gill"
    ],
    [
        "Name": "Kimmy Stein",
        "Height (inches)": "41",
        "Soccer Experience": "NO",
        "Guardian Name(s)": "Bill and Hillary Stein"
    ],
    [
        "Name": "Sammy Adams",
        "Height (inches)": "45",
        "Soccer Experience": "NO",
        "Guardian Name(s)": "Jeff Adams"
    ],
    [
        "Name": "Karl Saygan",
        "Height (inches)": "42",
        "Soccer Experience": "YES",
        "Guardian Name(s)": "Heather Bledsoe"
    ],
    [
        "Name": "Suzane Greenberg",
        "Height (inches)": "44",
        "Soccer Experience": "YES",
        "Guardian Name(s)": "Henrietta Dumas"
    ],
    [
        "Name": "Sal Dali",
        "Height (inches)": "41",
        "Soccer Experience": "NO",
        "Guardian Name(s)": "Gala Dali"
    ],
    [
        "Name": "Joe Kavalier",
        "Height (inches)": "39",
        "Soccer Experience": "NO",
        "Guardian Name(s)": "Sam and Elaine Kavalier"
    ],
    [
        "Name": "Ben Finkelstein",
        "Height (inches)": "44",
        "Soccer Experience": "NO",
        "Guardian Name(s)": "Aaron and Jill Finkelstein"
    ],
    [
        "Name": "Diego Soto",
        "Height (inches)": "41",
        "Soccer Experience": "YES",
        "Guardian Name(s)": "Robin and Sarika Soto"
    ],
    [
        "Name": "Chloe Alaska",
        "Height (inches)": "47",
        "Soccer Experience": "NO",
        "Guardian Name(s)": "David and Jamie Alaska"
    ],
    [
        "Name": "Arnold Willis",
        "Height (inches)": "43",
        "Soccer Experience": "NO",
        "Guardian Name(s)": "Claire Willis"
    ],
    [
        "Name": "Phillip Helm",
        "Height (inches)": "44",
        "Soccer Experience": "YES",
        "Guardian Name(s)": "Thomas Helm and Eva Jones"
    ],
    [
        "Name": "Les Clay",
        "Height (inches)": "42",
        "Soccer Experience": "YES",
        "Guardian Name(s)": "Wynonna Brown"
    ],
    [
        "Name": "Herschel Krustofski",
        "Height (inches)": "45",
        "Soccer Experience": "YES",
        "Guardian Name(s)": "Hyman and Rachel Krustofski"
    ]
]

// Create three arrays of dictionaries for storing players in respective teams

var teamSharks = [[String: String]] ()
var teamDragons = [[String: String]] ()
var teamRaptor = [[String: String]] ()

// Function for creating an array of players sorted by their height (lowest to heighest)

func sortPlayersByHeight(fromArray players: [[String : String]]) -> [[String: String]] {
    
    var playersOrderedByHeight: [[String: String]] = players
    var i: Int = 0
    var runAgain: Bool = false
    
    
    while i < playersOrderedByHeight.count - 1 || runAgain == true {
        
        if Int(playersOrderedByHeight[i]["Height (inches)"]!)! > Int(playersOrderedByHeight[i + 1]["Height (inches)"]!)! {
            
            if i == playersOrderedByHeight.count - 2 {
                let lastRemovedPlayer: [String: String] = playersOrderedByHeight.remove(at: i + 1)
                playersOrderedByHeight.insert(lastRemovedPlayer, at: i)
                runAgain = true
            } else {
                let removedPlayer: [String: String] = playersOrderedByHeight.remove(at: i)
                playersOrderedByHeight.insert(removedPlayer, at: i + 1)
                runAgain = true
            }
            
        } else {
            i += 1
            runAgain = false
        }
        
        if runAgain == true {
            i = 0
        }
    }
    
    return playersOrderedByHeight
}

// Function for sorting players into seperate groups by experience

func sortPlayersByExperience(fromArray players: [[String: String]]) -> ([[String: String]], [[String: String]]) {
    var playersWithExperience: [[String: String]] = []
    var playersWithoutExperience: [[String: String]] = []
    
    for player in players {
        if player["Soccer Experience"] == "YES" {
            playersWithExperience.append(player)
        } else if player["Soccer Experience"] == "NO" {
            playersWithoutExperience.append(player)
        }
    }
    
    return (playersWithExperience, playersWithoutExperience)
}

// Function to sort players into a team according to number of teams and team order

func sortPlayersIntoTeam(fromArray players: [[String: String]], numberOfTeams: Int, teamNumber: Int) -> [[String: String]] {
    var localSortArray: [[String: String]] = []
    var i: Int = 0
    while i < players.count {
        localSortArray.append(players[i + (teamNumber - 1)])
        i += numberOfTeams
    }
    
    return localSortArray
}

// Function which takes an array of players as inputs and returns an array of letters for parents

func createParentLetters(fromArray players: [[String: String]], teamName team: String) -> [String] {
    var lettersToParents: [String] = []
    var teamName: String = ""
    var teamPracticeTime: String = ""
    
    switch team {
    case "Team Raptors":
        teamPracticeTime = "March 18, 1pm"
        teamName = "Raptors"
    case "Team Sharks":
        teamPracticeTime = "March 17, 3pm"
        teamName = "Sharks"
    case "Team Dragons":
        teamPracticeTime = "March 17, 1pm"
        teamName = "Dragons"
    default:
        teamPracticeTime = "N/A"
        teamName = "SORRY TEAM WASN'T FOUND"
    }
    
    for player in players {
        let letterContent = "Dear \(player["Guardian Name(s)"]!),\n\nWe are writing to inform you that your child: \(player["Name"]!) has been placed into team: \(teamName). The first practice is on: \(teamPracticeTime). We are looking forward to seeing you then.\n\nWith kind regards,\n\nYour Soccer Coordinator\n\n\n"
        
        lettersToParents.append(letterContent)
    }
    
    return lettersToParents
}

// Sort players into an experienced group and an inexperienced group

let experiencedPlayers = sortPlayersByExperience(fromArray: players).0
let inexperiencedPlayers = sortPlayersByExperience(fromArray: players).1

// Sort both experienced and inexperienced players by height

var experiencedPlayersOrderedByHeight = sortPlayersByHeight(fromArray: experiencedPlayers)
var inexperiencedPlayersOrderedByHeight = sortPlayersByHeight(fromArray: inexperiencedPlayers)

// Combine experienced and inexperienced players into one array, flipping the order of one of them to maintain height balance when sorting them into teams

var combinedSortedPlayersByHeight = experiencedPlayersOrderedByHeight + inexperiencedPlayersOrderedByHeight.reversed()

// Distribute players into the three teams balancing height and experience

teamRaptor = sortPlayersIntoTeam(fromArray: combinedSortedPlayersByHeight, numberOfTeams: 3, teamNumber: 1)
teamSharks = sortPlayersIntoTeam(fromArray: combinedSortedPlayersByHeight, numberOfTeams: 3, teamNumber: 2)
teamDragons = sortPlayersIntoTeam(fromArray: combinedSortedPlayersByHeight, numberOfTeams: 3, teamNumber: 3)

// Print team average heights to console

var totalRaptorHeight: Double = 0
var totalSharksHeight: Double = 0
var totalDragonsHeight: Double = 0


for player in teamRaptor {
    totalRaptorHeight += Double(player["Height (inches)"]!)!
}

for player in teamSharks {
    totalSharksHeight += Double(player["Height (inches)"]!)!
}

for player in teamDragons {
    totalDragonsHeight += Double(player["Height (inches)"]!)!
}

let averageRaptorHeight: Double = totalRaptorHeight / 6
let averageSharksHeight: Double = totalSharksHeight / 6
let averageDragonsHeight: Double = totalDragonsHeight / 6

print("Team Raptor Average Height: \(averageRaptorHeight)\nTeam Sharks Average Height: \(averageSharksHeight)\nTeam Dragons Average Height: \(averageDragonsHeight)\n")

// Create letters to parents

var lettersToParents: [String] = createParentLetters(fromArray: teamRaptor, teamName: "Team Raptors")
lettersToParents += createParentLetters(fromArray: teamSharks, teamName: "Team Sharks")
lettersToParents += createParentLetters(fromArray: teamDragons, teamName: "Team Dragons")

// Print letters to the console

for letter in lettersToParents {
    print(letter)
}

