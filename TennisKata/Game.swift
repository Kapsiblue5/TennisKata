import Foundation

fileprivate enum Score:String {
    case Love, Fifteen, Thirty, Forty
}


class Game: NSObject {
    private var player1Score = 0
    private var player2Score = 0
    
    func getScore() -> String {
        if isDeuce() {
            return "Deuce"
        }
        if player1Score == player2Score {
            return getPointsFromScore(score: player1Score) + " All"
        }
        return getPointsFromScore(score: player1Score) + "," + getPointsFromScore(score: player2Score)
    }
    
    func player1Scores() {
        player1Score += 1
    }
    
    func player2Scores() {
        player2Score += 1
    }
    
    private func isDeuce() -> Bool {
        return player1Score == player2Score && player1Score >= 3
    }
    
    private func getPointsFromScore(score:Int) -> String {
        switch score {
        case 1:
            return Score.Fifteen.rawValue
        case 2:
            return Score.Thirty.rawValue
        case 3:
            return Score.Forty.rawValue
        default:
            return Score.Love.rawValue
        }
    }
}

