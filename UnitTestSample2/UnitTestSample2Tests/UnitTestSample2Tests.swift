//
//  UnitTestSample2Tests.swift
//  UnitTestSample2Tests
//
//  Created by home on 2020/09/16.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import XCTest
@testable import UnitTestSample2

class UnitTestSample2Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSomething() {
        let vc = ViewController()
        
        // 引数として渡す値
        let arg = 1

        // 期待する戻り値
        let expected = 2

        // 実際の戻り値
        let actual = vc.doSomething(arg: arg)

        XCTAssertEqual(actual, expected)
    }
}
