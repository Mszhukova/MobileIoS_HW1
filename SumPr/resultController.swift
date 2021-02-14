//
//  resultController.swift
//  SumPr
//
//  Created by Казарян Давид on 14.02.21.
//  Copyright © 2021 Maria Zhukova. All rights reserved.
//

import UIKit

class resultController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let value1 = String(describing: SumResultManager.shared.sumResult!.value)
        resultLabel.text = value1
    }


    
}

