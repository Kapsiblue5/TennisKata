import XCTest
@testable import TennisKata

class TennisKataTests: XCTestCase {
 
    func test_ShouldReturnLoveAll_WhenNewGameStarts() {
        let game = Game()
        
        let score = game.getScore()
        
        XCTAssertEqual("Love All", score)
    }


}
