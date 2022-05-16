//
//  ViewController.swift
//  MVCexample
//
//  Created by Ahmet WOW on 12/05/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblWOW: UILabel!
    
    var user : User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        user = NetworkService.shared.getLoggedInUser()
        welcomeUser()
    }
    
    func welcomeUser(){
        lblWOW.text = "Hello, \(user.firstName) \(user.lastName)"
    }
}
