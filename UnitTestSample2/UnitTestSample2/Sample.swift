//
//  Sample.swift
//  UnitTestSample2
//
//  Created by home on 2020/09/18.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import Foundation

class Sample {

    private let data: SampleData

    init() {
        // 1 ~ 10 までのランダムな数字を使って SampleData クラスを生成する
        let random = Int(arc4random_uniform(10) + 1)
        self.data = SampleData(value: random)
    }

    func reduce () -> Int {
        // Sampleクラス外の値を利用する
        return self.data.double() - 1
    }
}

class SampleData {

    let value: Int

    init(value: Int) {
        self.value = value
    }

    func double() -> Int {
        return value * 2
    }
}
