//
//  LogInViewController.swift
//  FireBaseDemo
//
//  Created by Jash Garish on 9/7/19.
//  Copyright © 2019 Jash Garish. All rights reserved.
//

import UIKit
import Firebase
class LogInViewController: UIViewController {

    @IBOutlet weak var PasswordTxtField: UITextField!
    @IBOutlet weak var EmailTxtField: UITextField!
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var ErrorLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Login Page"
        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: EmailTxtField.text!, password: PasswordTxtField.text!) { (user, error) in
            if error == nil{
                self.performSegue(withIdentifier: "loginToHome", sender: self)
            }
            else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
}
