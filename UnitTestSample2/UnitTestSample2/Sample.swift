//
//  Sample.swift
//  UnitTestSample2
//
//  Created by home on 2020/09/18.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import Foundation

class ImplicitInput {

    private let data: Data

    init() {
        // 1 ~ 10 までのランダムな数字を使って SampleData クラスを生成する
        let random = Int(arc4random_uniform(10) + 1)
        self.data = Data(value: random)
    }

    func reduce () -> Int {
        // Sampleクラス外の値を利用する
        return self.data.double() - 1
    }
}

class Data {

    let value: Int

    init(value: Int) {
        self.value = value
    }

    func double() -> Int {
        return value * 2
    }
}
