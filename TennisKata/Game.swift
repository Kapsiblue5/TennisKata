import Foundation

class Game: NSObject {
    private var player1Score = 0
    
    func getScore() -> String {
        if player1Score == 1 {
            return "Fifteen,Love"
        }
        return "Love All"
    }
    
    func player1Scores() {
        player1Score = 1
    }
}

