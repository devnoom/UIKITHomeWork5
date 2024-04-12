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

//var students = [
//    StudentData(fullName: "nodar ghachava", age: 28, gender: .male, hobby: "hiking in the caucasus mountains"),
//    StudentData(fullName: "elene donadze", age: 21, gender: .female, hobby: "collecting vintage georgian jewelry"),
//    StudentData(fullName: "temuri chitashvili", age: 26, gender: .male, hobby: "developing open source software"),
//    StudentData(fullName: "irina datoshvili", age: 24, gender: .female, hobby: "practicing aerial silk dancing"),
//    StudentData(fullName: "tornike elyanishvili", age: 27, gender: .male, hobby: "playing classical guitar"),
//    StudentData(fullName: "ana ioramashvili", age: 22, gender: .female, hobby: "writing short fantasy stories"),
//    StudentData(fullName: "nini bardavelidze", age: 23, gender: .female, hobby: "studying marine biology"),
//    StudentData(fullName: "barbare tepnadze", age: 25, gender: .female, hobby: "exploring minimalist baking"),
//    StudentData(fullName: "mariam sreseli", age: 20, gender: .female, hobby: "learning new languages"),
//    StudentData(fullName: "valeri mekhashishvili", age: 30, gender: .male, hobby: "competitive chess playing"),
//    StudentData(fullName: "zuka papuashvili", age: 24, gender: .male, hobby: "restoring classic cars"),
//    StudentData(fullName: "nutsa beriashvili", age: 24, gender: .female, hobby: "curating modern art exhibitions"),
//    StudentData(fullName: "luka kharatishvili", age: 28, gender: .male, hobby: "documentary filmmaking"),
//    StudentData(fullName: "data robakidze", age: 27, gender: .male, hobby: "urban gardening"),
//    StudentData(fullName: "nika kakhniashvili", age: 29, gender: .male, hobby: "skydiving"),
//    StudentData(fullName: "sandro gelashvili", age: 25, gender: .male, hobby: "digital music production"),
//    StudentData(fullName: "ana namgaladze", age: 21, gender: .female, hobby: "photographing street fashion"),
//    StudentData(fullName: "bakar kharabadze", age: 30, gender: .male, hobby: "mountain biking"),
//    StudentData(fullName: "archil menabde", age: 27, gender: .male, hobby: "crafting handmade pottery"),
//    StudentData(fullName: "tamuna kakhidze", age: 22, gender: .female, hobby: "volunteering at animal shelters"),
//    StudentData(fullName: "giorgi michitashvili", age: 23, gender: .male, hobby: "bird watching"),
//    StudentData(fullName: "salome topuria", age: 23, gender: .female, hobby: "yoga and meditation"),
//    StudentData(fullName: "luka gujejiani", age: 29, gender: .male, hobby: "competitive video gaming"),
//    StudentData(fullName: "gega tatulishvili", age: 26, gender: .male, hobby: "exploring virtual reality tech"),
//    StudentData(fullName: "raisa badalova", age: 24, gender: .female, hobby: "ballet dancing"),
//    StudentData(fullName: "aleksandre saroiani", age: 28, gender: .male, hobby: "astronomy and telescope making"),
//    StudentData(fullName: "begi kopaliani", age: 29, gender: .male, hobby: "collecting rare vinyl records"),
//    StudentData(fullName: "akaki titberidze", age: 26, gender: .male, hobby: "kayaking in whitewater rivers"),
//    StudentData(fullName: "sandro kupatadze", age: 27, gender: .male, hobby: "scuba diving in the black sea"),
//    StudentData(fullName: "gvantsa gvagvalia", age: 22, gender: .female, hobby: "organic gardening"),
//    StudentData(fullName: "vano kvakhadze", age: 24, gender: .male, hobby: "studying quantum physics")
//]
