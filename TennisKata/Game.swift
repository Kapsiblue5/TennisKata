import Foundation

fileprivate enum Score:String {
    case Love, Fifteen, Thirty, Forty
}


class Game: NSObject {
    private var player1Score = 0
    private var player2Score = 0
    
    func getScore() -> String {
        if isWinner() {
            return playerWithHigherScore() + " Wins"
        }
        if isAdvantage() {
            return "Advantage " + playerWithHigherScore()
        }
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
    
    private func isAdvantage() -> Bool {
        return  player1Advantage() || player2Advantage()
    }
    private func player1Advantage() -> Bool {
        return (player1Score > 3) && (player1Score - player2Score == 1)
    }
    private func player2Advantage() -> Bool {
        return (player2Score > 3) && (player2Score - player1Score == 1)
    }
    
    private func isWinner() -> Bool {
        return  player1Winner() || player2Winner()
    }
    private func player1Winner() -> Bool {
        return (player1Score > 3) && (player1Score - player2Score >= 2)
    }
    private func player2Winner() -> Bool {
        return (player2Score > 3) && (player2Score - player1Score >= 2)
    }
    
    private func playerWithHigherScore() -> String {
        if player1Score > player2Score {
            return "Player1"
        }
        return "Player2"
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

