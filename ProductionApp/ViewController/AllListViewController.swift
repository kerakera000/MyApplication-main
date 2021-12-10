//
//  AllListViewController.swift
//  ProductionApp
//
//  Created by kerakera on 2021/12/07.
//

import UIKit

class AllListViewController: UIViewController,UITabBarDelegate {
    
    var passwordtest = ""
    var emailtext = ""

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewWillAppear(_ animated: Bool) {
        print("ーーーーーーーーー")
        print(passwordtest)
        print(emailtext)
    }
    @IBAction func NewList(_ sender: Any) {
        self.performSegue(withIdentifier: "ToNewmemo", sender: nil)
    }
}
