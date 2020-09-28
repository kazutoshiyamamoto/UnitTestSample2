//
//  ImplicitOutput.swift
//  UnitTestSample2
//
//  Created by home on 2020/09/25.
//  Copyright © 2020 Swift-beginners. All rights reserved.
//

import Foundation

class ImplicitOutput {
    
    private let data = SampleData(value: nil)
    
    func write(int: Int) {
        
        // クラス外へ変更を行っている
        self.data.value = int
    }
}

class SampleData {
    
    var value: Int?
    
    init(value: Int?) {
        self.value = value
    }
}
