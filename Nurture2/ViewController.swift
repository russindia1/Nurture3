//
//  ViewController.swift
//  Nurture2
//
//  Created by Russell King on 29/3/19.
//  Copyright © 2019 Nurture2.App. All rights reserved.
//

import UIKit
import Firebase

var userEmail: String = ""

class ViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var confirmPasswordText: UITextField!
    @IBOutlet weak var signIn: UIButton!
    @IBOutlet weak var confirmPasswordLabel: UILabel!
    
    var loginRegistrationStatus: String = "Registration"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
    }

    @IBAction func registerLoginControl(_ sender: UISegmentedControl){
        
      //  var selectedSegmentIndex: Int { get }
        
        switch sender.selectedSegmentIndex{
            
        case 0:
            signIn.setTitle("Register", for: .normal)
            confirmPasswordLabel.isHidden = false
            confirmPasswordText.isHidden = false
            loginRegistrationStatus = "Registration"
            
        case 1:
            signIn.setTitle("Login", for: .normal)
            loginRegistrationStatus = "Login"
            confirmPasswordLabel.isHidden = true
            confirmPasswordText.isHidden = true
        default:
            break
        }
        
    }
        

        
        
        
  //  weak var registerLoginControlOutlet: UISegmentedControl!
    
    
    
        
    
    
        
    
    
    @IBAction func signinRegisterPressed(_ sender: UIButton) {
    
        if loginRegistrationStatus == "Registration"{
        
     //   Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!) { (user, error) in
     //       if error != nil{
     //           print(error!)
     //       }
     //       else{
     //           print("registration successful")
            userEmail = emailText.text!
            performSegue(withIdentifier: "goToChildView", sender: self)
            
           
            
              //  let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
              //  let ChildViewController = storyBoard.instantiateViewController(withIdentifier: //"ChildViewController") as! ChildViewController
               // self.present(ChildViewController, animated: true, completion: nil)
                
       //     }
       //     }
        }
        else {
         //   Auth.auth().signIn(withEmail: self.emailText.text!, password: self.passwordText.text!, completion: error)
         
            Auth.auth().signIn(withEmail: self.emailText.text!, password: self.passwordText.text!) { [weak self] user, error in
               guard let strongSelf = self else { return }
                    if error != nil{
                        print(error!)
                    }
                    else{
                        print("login successful")
                }
                }
            userEmail = emailText.text!
            
                }
            
        }
            
        
        
    
    
}


