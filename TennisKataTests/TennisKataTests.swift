import XCTest
@testable import TennisKata

class TennisKataTests: XCTestCase {
    let game = Game()
    
    func test_ShouldReturnLoveAll_WhenNewGameStarts() {
        let score = game.getScore()
        
        XCTAssertEqual("Love All", score)
    }
    
    func test_ShouldReturnFifteenLove_WhenPlayer1WinsFirstPoint() {
        setScoreForGame(player1Score: 1, player2Score: 0)
        
        let score = game.getScore()
        
        XCTAssertEqual("Fifteen,Love", score)
    }
    
    func test_ShouldReturnFifteenAll_WhenBothPlayersWinsFirstPoint() {
        setScoreForGame(player1Score: 1, player2Score: 1)
        
        let score = game.getScore()
        
        XCTAssertEqual("Fifteen All", score)
    }
    
    func test_ShouldReturnThirtyLove_WhenPlayer1WinsFirstTwoPoints() {
        setScoreForGame(player1Score: 2, player2Score: 0)
        
        let score = game.getScore()
        
        XCTAssertEqual("Thirty,Love", score)
    }
    
    func test_ShouldReturnFortyLove_WhenPlayer1WinsFirstThreePoints() {
        setScoreForGame(player1Score: 3, player2Score: 0)
        
        let score = game.getScore()
        
        XCTAssertEqual("Forty,Love", score)
    }
}

extension TennisKataTests {
    
    fileprivate func setScoreForGame(player1Score:Int,player2Score:Int) {
        updatePlayer1Score(player1Score)
        updatePlayer2Score(player2Score)
    }
    
    private func updatePlayer1Score(_ player1Score: Int) {
        for _ in 0..<player1Score {
            game.player1Scores()
        }
    }
    
    private func updatePlayer2Score(_ player2Score: Int) {
        for _ in 0..<player2Score {
            game.player2Scores()
        }
    }
}
