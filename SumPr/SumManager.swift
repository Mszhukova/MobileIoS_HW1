//
//  SumManager.swift
//  SumPr
//
//  Created by Казарян Давид on 14.02.21.
//  Copyright © 2021 Maria Zhukova. All rights reserved.
//

import Foundation

class SumResult {
    let value: Int
    init(value: Int){
        self.value = value
    }

}
class SumResultManager {
    static let shared = SumResultManager()
    private init(){}
    var sumResult: SumResult! = nil


}
