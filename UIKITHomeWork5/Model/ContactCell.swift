//
//  ContactCell.swift
//  UIKITHomeWork5
//
//  Created by MacBook Air on 12.04.24.
//

import UIKit

class ContactCell: UITableViewCell {
    
    var contactImageView = UIImageView()
    var contactName = UILabel()
    var contactHobby = UILabel()
    var contactAge = UILabel()
    var contactGender = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(contactImageView)
        addSubview(contactName)
        configureImageView()
        configureNameView()
        setImageConstraints()
        setTitleLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func set(Contact: Contacts) {
        contactImageView.image = Contact.image
        contactName.text = Contact.FullName
        contactAge.text = Contact.age
        contactHobby.text = Contact.hobby
        contactGender.text = Contact.gender
        
    }
    
    func configureImageView(){
        contactImageView.layer.cornerRadius = 4
        
    }
    func configureNameView(){
        contactName.numberOfLines = 0
        
    }
    func
    setImageConstraints() {
        contactImageView.translatesAutoresizingMaskIntoConstraints = false
        contactImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        contactImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true; contactImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true; contactImageView.widthAnchor.constraint(equalTo: contactImageView.heightAnchor, multiplier:
                                                                                                                                                                                                                                    16/9) .isActive = true
        
    }
    func setTitleLabelConstraints () {
        contactName.translatesAutoresizingMaskIntoConstraints = false;
        contactName.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true; contactName.leadingAnchor.constraint(equalTo: contactImageView.trailingAnchor, constant:20).isActive = true;
        contactName.heightAnchor.constraint(equalToConstant: 30).isActive = true; contactName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        
    }
}
//12:39
