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

// スタブを定義
class ReadableRepositoryStub: ReadableRepositoryContract {

    private let base: Int

    init(base: Int) {
        self.base = base
    }

    // 偽物の振る舞いを行なっている箇所
    func read() -> Int {
        // init時に渡された値をそのまま返す
        return self.base
    }
}

class ImplicitInputTests: XCTestCase {
    func testMultiplication() {
        // ReadableRepositoryContract#read() = 4 の時、
        let int = 4

        // ImplicitInput#reduce() = 3 となる
        let expected = 3

        // - 1: スタブを作成
        let repositoryStub = ReadableRepositoryStub(base: int)

        // - 2: スタブを差し込む
        let input = ImplicitInput(repository: repositoryStub)

        // - 3: 内部でスタブが利用される
        //      これにより、「ReadableRepositoryContract#read() = 4 の時」を再現できる
        let actual = input.reduce()

        XCTAssertEqual(actual, expected)
    }
}
