//
//  UserModel.swift
//  MVCexample
//
//  Created by Ahmet WOW on 12/05/2022.
//

import Foundation

struct User {
    let firstName,lastName, eMail: String
    let age : Int
    let Location : String
    }

// unnecessary
struct Location {
    let lat:Double
    let lng:Double
}
