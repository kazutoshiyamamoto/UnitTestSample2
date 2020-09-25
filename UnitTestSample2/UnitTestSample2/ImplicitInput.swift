//
//  Sample.swift
//  UnitTestSample2
//
//  Created by home on 2020/09/18.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import Foundation

// 「クラス外から取得した値」（double()）に相当するProtocolを定義。
protocol ReadableRepositoryContract {
    // Data#double() に相当する
    func read() -> Int
}

class ImplicitInput {
    
//    private let data: Data
    
    private let repository: ReadableRepositoryContract
    
    init(repository: ReadableRepositoryContract) {
        self.repository = repository
//        // 1 ~ 10 までのランダムな数字を使って SampleData クラスを生成する
//        let random = Int(arc4random_uniform(10) + 1)
//        self.data = Data(value: random)
    }
    
    func reduce () -> Int {
        return self.repository.read() - 1
        
//        // ImplicitInputクラス外の値を利用する
//        return self.data.double() - 1
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

// 本番用のReadableRepositoryContractプロトコルに準拠したクラス
class ReadableRepository: ReadableRepositoryContract {

    private let data: Data

    init(data: Data) {
        self.data = data
    }

    // プロトコル準拠部分
    // Data#double() に相当する
    func read() -> Int {
        return self.data.double()
    }
}
