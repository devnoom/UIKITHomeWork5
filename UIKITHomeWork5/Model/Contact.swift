//
//  Contact.swift
//  UIKITHomeWork5
//
//  Created by MacBook Air on 11.04.24.
//

import UIKit

struct Contacts {
    var image: UIImage
    var FullName: String
    var age: String
    var gender: String
    var hobby: String
    var firstLetter: String {
            guard let firstChar = FullName.first else { return "" }
            return String(firstChar)
        }
}
