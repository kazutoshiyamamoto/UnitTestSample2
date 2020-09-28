//
//  ImplicitOutput.swift
//  UnitTestSample2
//
//  Created by home on 2020/09/25.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import Foundation

protocol WritableRepositoryContract {
    // 「記録したいクラス外の値」に相当するProtocolを定義
    func write(int: Int)
}

class ImplicitOutput {
    
//    // 変更前
//    private let data = SampleData(value: nil)
    
    // 変更後
    private let repository: WritableRepositoryContract
    
    // 変更後に追加
    init(writeVia repository: WritableRepositoryContract) {
        self.repository = repository
    }
    
    func write(int: Int) {
//        // 変更前
//        // クラス外へ変更を行っている
//        self.data.value = int
        
        // 変更後
        self.repository.write(int: int)
    }
}

// 本番のWritableRepositoryContractプロトコルに準拠したクラス
class WritableRepository: WritableRepositoryContract {

    // 変更前にImplicitOutputクラスに実装していた定数
    private let data: SampleData

    init(data: SampleData) {
        self.data = data
    }

    func write(int: Int) {
        self.data.value = int
    }
}

class SampleData {
    
    var value: Int?
    
    init(value: Int?) {
        self.value = value
    }
}
