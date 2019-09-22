//
//  SignUpViewController.swift
//  FireBaseDemo
//
//  Created by Jash Garish on 9/7/19.
//  Copyright © 2019 Jash Garish. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
class TherapistSignUpViewController: UIViewController {
    var ref: DatabaseReference!
    @IBOutlet weak var FirstNameTxtField: UITextField!
    @IBOutlet weak var LastNameTxtField: UITextField!
    @IBOutlet weak var EmailTxtField: UITextField!
    @IBOutlet weak var PasswordTxtField: UITextField!
    @IBOutlet weak var SignUpButton: UIButton!
    @IBOutlet weak var ComfirmPassword: UITextField!
    @IBOutlet weak var ErrorButton: UILabel!
    var therapists : [Therapists] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ref = Database.database().reference()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignUpTapped(_ sender: Any) {
//        var t = Therapists((FirstNameTxtField.text!) + " " + (LastNameTxtField.text)!), EmailTxtField.text!, "I can help")
//        therapists.insert(t)
        
        
        
        self.ref.child("Users").childByAutoId().updateChildValues(["username":((FirstNameTxtField.text!) + " " + (LastNameTxtField.text)!) , "Type": "Therapist"])
        
        
        
        
        
        
        if PasswordTxtField.text != ComfirmPassword.text {
            let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
        else{
            Auth.auth().createUser(withEmail: EmailTxtField.text!, password: PasswordTxtField.text!){ (user, error) in
                if error == nil {
                    self.performSegue(withIdentifier: "signupToHome", sender: self)
                }
                else{
                    let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    
                    alertController.addAction(defaultAction)
                    self.present(alertController, animated: true, completion: nil)
                }
            }
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
