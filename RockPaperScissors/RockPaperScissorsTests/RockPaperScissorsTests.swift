//
//  RockPaperScissorsTests.swift
//  RockPaperScissorsTests
//
//  Created by 김정원 on 2/5/24.
//

import XCTest
@testable import RockPaperScissors

final class RockPaperScissorsTests: XCTestCase {

    var sut: RockPaperScissors!
    override func setUpWithError() throws {
        sut = RockPaperScissors()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    // 두개의 입력을 통해 승패를 가려주기
    // 같다면 무승부로 해주기
    // 결과를 기록하기
    
    func test_값을_내지않으면_오류가난다() {
        //given
        let input: [무엇을낼까] = []
        // when,then
        XCTAssertThrowsError(try sut.가위바위보(input: input))
    }
    
    func test_무승부(){
        let input: [무엇을낼까] = [.paper,.paper]
        XCTAssertEqual(Result.draw, try sut.가위바위보(input: input))
        
    }
    
    func test_사용자승(){
        let input: [무엇을낼까] = [.paper,.scissors]
        
        XCTAssertEqual(Result.win, try sut.가위바위보(input: input))
    }
    
    func test_사용자패(){
        let input: [무엇을낼까] = [.paper,.rock]
        XCTAssertEqual(Result.lose, try sut.가위바위보(input: input))
    }

}
