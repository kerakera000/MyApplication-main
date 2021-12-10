//
//  CalenderViewController.swift
//  ProductionApp
//
//  Created by kerakera on 2021/12/07.
//

import UIKit

class CalenderViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func NewList(_ sender: Any) {
        self.performSegue(withIdentifier: "ToNewMemo", sender: nil)
    }
}
