//
//  SigninViewController.swift
//  ProductionApp
//
//  Created by kerakera on 2021/12/06.
//

import UIKit

class SigninViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Skip(_ sender: Any) {
        let tabBarController = self.storyboard?.instantiateViewController(withIdentifier: "Tabbar") as! UITabBarController
        tabBarController.selectedIndex = 0 
        self.present(tabBarController, animated: true, completion: nil)
    }
}
