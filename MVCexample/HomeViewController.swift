//
//  HomeViewController.swift
//  MVCexample
//
//  Created by Ahmet WOW on 12/05/2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var lblWOOW: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnLogin.layer.cornerRadius = 8
        
        emailField.addTarget(self, action: #selector(validateFields), for: .editingChanged)
        passwordField.addTarget(self, action: #selector(validateFields), for: .editingChanged)
        
    }
    
    @objc func validateFields() {
        btnLogin.isEnabled = emailField.text != "" && passwordField.text != ""
    }
    
    func goToHomeYanki(){
        let controller = storyboard?.instantiateViewController(withIdentifier: "viewController") as! ViewController
        //let VC = storyboard?.instantiateViewController(identifier: "HomeViewController") as! HomeViewController
        
        present(controller, animated: true, completion: nil)
    }
 
    @IBAction func btnLogin_Tapped(_ sender: Any) {
        NetworkService.shared.login(email: emailField.text!, password: passwordField.text!) { success in
            if success {
                self.goToHomeYanki()
            } else {
                print("W O O W ")
            }
        }
    }
     
}
