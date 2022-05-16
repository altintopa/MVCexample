//
//  NetworkService.swift
//  MVCexample
//
//  Created by Ahmet WOW on 12/05/2022.
//

import Foundation

class NetworkService {
    
    static let shared = NetworkService()
    private init() {}
    
    private var user: User?
    
    func login(email:String , password:String, completion: @escaping(Bool)-> Void) {
        
        DispatchQueue.global().async {
            sleep(1)
            DispatchQueue.main.async {
                if email == "thatsMe@altintop.com" && password == "not1234"{
                    self.user = User(firstName: "Kâmil", lastName: "Ka", eMail: "Woow@gmail.com", age: 30, Location: "Nope !")
                    completion(true)
                    
                } else {
                    self.user = nil
                    completion(false)
                }
            }
        }
    }
    
    func getLoggedInUser() -> User? {
        return user
    }
    
}
