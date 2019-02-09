import Foundation

class Game: NSObject {
    private var player1Score = 0
    private var player2Score = 0
    
    func getScore() -> String {
        if player1Score == 2 && player2Score == 0 {
            return "Thirty,Love"
        }
        if player1Score == 1 && player2Score == 1 {
            return "Fifteen All"
        }
        if player1Score == 1 {
            return "Fifteen,Love"
        }
        return "Love All"
    }
    
    func player1Scores() {
        player1Score += 1
    }
    
    func player2Scores() {
        player2Score += 1
    }
}

