import XCTest
@testable import TennisKata

class TennisKataTests: XCTestCase {
    let game = Game()
    
    func test_ShouldReturnLoveAll_WhenNewGameStarts() {
        let score = game.getScore()
        
        XCTAssertEqual("Love All", score)
    }
    
    func test_ShouldReturnFifteenLove_WhenPlayer1WinsFirstPoint() {
        game.player1Scores()
        
        let score = game.getScore()
        
        XCTAssertEqual("Fifteen,Love", score)
    }
    
    func test_ShouldReturnFifteenAll_WhenBothPlayersWinsFirstPoint() {
        game.player1Scores()
        game.player2Scores()
        
        let score = game.getScore()
        
        XCTAssertEqual("Fifteen All", score)
    }
    
    func test_ShouldReturnThirtyLove_WhenPlayer1WinsFirstTwoPoints() {
        game.player1Scores()
        game.player1Scores()
        
        let score = game.getScore()
        
        XCTAssertEqual("Thirty,Love", score)
    }
    
    
}
