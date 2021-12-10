//
//  MailSigninViewController.swift
//  ProductionApp
//
//  Created by kerakera on 2021/12/06.
//

import UIKit

class MailSigninViewController: UIViewController {

    @IBOutlet weak var MailTextField: CustomTextField!
    @IBOutlet weak var GoNextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        MailTextField.layer.borderWidth = 1.0
    }

    @IBAction func ToPassWord(_ sender: Any) {
        
        if MailTextField.text == ""{
            GoNextButton.isEnabled = true
        } else {
            self.performSegue(withIdentifier: "ToPassword", sender: nil)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToPassword" {
            let nextView = segue.destination as! MailPasswordViewController
            nextView.MailText = MailTextField.text!
            MailTextField.text = ""
        }
    }
}
