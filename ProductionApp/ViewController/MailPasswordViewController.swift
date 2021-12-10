//
//  MailPasswordViewController.swift
//  ProductionApp
//
//  Created by kerakera on 2021/12/06.
//

import UIKit

class MailPasswordViewController: UIViewController {

    
    @IBOutlet weak var PasswordText: CustomTextField!
    @IBOutlet weak var Button: UIButton!
    var MailText = ""
    var Passwordtext = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        PasswordText.layer.borderWidth = 1.0
        
    }
    override func viewWillAppear(_ animated: Bool) {
        print(MailText)
    }

    @IBAction func BackMail(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func GoAllList(_ sender: Any) {
        Passwordtext = PasswordText.text!
        
        if let MailText = MailText as? String {
            if let PassWord = Passwordtext as? String{
                let tabBarController = self.storyboard?.instantiateViewController(withIdentifier: "Tabbar") as! UITabBarController
                tabBarController.selectedIndex = 0
                self.present(tabBarController, animated: true, completion: nil)
            }
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoAllList" {
            let nextView = segue.destination as! AllListViewController
            nextView.emailtext = MailText
            nextView.passwordtest = Passwordtext
        }
    }
}
