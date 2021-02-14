//
//  ViewController.swift
//  SumPr
//
//  Created by Казарян Давид on 13.02.21.
//  Copyright © 2021 Maria Zhukova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var inputField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button(_ sender: UIButton) {

        let inputNumbers = inputField.text
        let parseNumbers = inputNumbers?.components(separatedBy: " ").flatMap { Int($0)}
        let totalSum = parseNumbers!.reduce(0, +)

        
        SumResultManager.shared.sumResult = SumResult(value: totalSum)
        
        performSegue(withIdentifier: "resultController", sender: sender)
        
        //var globalSum: SumManager = SumManager(value: totalSum)

        
    }


}

