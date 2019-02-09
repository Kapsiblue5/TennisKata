import XCTest
@testable import TennisKata

class TennisKataTests: XCTestCase {
 
    func test_ShouldReturnLoveAll_WhenNewGameStarts() {
        let game = Game()
        
        let score = game.getScore()
        
        XCTAssertEqual("Love All", score)
    }
    
    func test_ShouldReturnFifteenLove_WhenPlayer1WinsFirstPoint() {
        let game = Game()
        game.player1Scores()
        
        let score = game.getScore()
        
        XCTAssertEqual("Fifteen,Love", score)
    }


}
