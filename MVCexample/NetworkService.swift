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
                if email == "test@test.com" && password == "password"{
                    self.user = User(firstName: "Ahmet", lastName: "ALTINTOP", eMail: "1634ahmt@gmail.com", age: 30, Location: "Yok")
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
