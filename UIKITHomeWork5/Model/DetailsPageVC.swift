import UIKit

class DetailsPageVC: UIViewController {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
    var contact: Contacts? // This will hold the selected contact object
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Make sure contact is not nil before setting labels
        if let contact = contact {
            nameLabel.text = contact.FullName
            ageLabel.text = contact.age
            genderLabel.text = contact.gender
            hobbyLabel.text = contact.hobby
            // Check if contact.image is not nil before setting profileImageView.image
            if let image = contact.image {
                profileImageView.image = image // Set profileImageView.image to the unwrapped image
            } else {
                // Handle the case where contact.image is nil, maybe set a default image
                profileImageView.image = UIImage(named: "defaultImage") // Provide the name of your default image
            }
        }
    }


}





////
////  DetailsPageVC.swift
////  UIKITHomeWork5
////
////  Created by MacBook Air on 12.04.24.
////
//import UIKit
//
//class DetailsPageVC: UIViewController {
//    var contact: Contacts?
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupUI()
//        
//    }
//    
//    func setupUI() {
//        // Creating the main view with gray background
//        let mainView = UIView()
//        mainView.backgroundColor = .gray
//        view.addSubview(mainView)
//        mainView.translatesAutoresizingMaskIntoConstraints = false
//        
//        NSLayoutConstraint.activate([
//            mainView.topAnchor.constraint(equalTo: view.topAnchor),
//            mainView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            mainView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
//        ])
//        
//        // Adding a stack view for the central image and label
//        let centralStackView = UIStackView()
//        centralStackView.axis = .vertical
//        centralStackView.alignment = .center
//        centralStackView.spacing = 10
//        mainView.addSubview(centralStackView)
//        centralStackView.translatesAutoresizingMaskIntoConstraints = false
//        
//        let imageView = UIImageView(image: UIImage(named: "Avatar1"))
//        centralStackView.addArrangedSubview(imageView)
//        
//        let label = UILabel()
//        label.text = "Your Label Text"
//        label.textColor = .white
//        centralStackView.addArrangedSubview(label)
//        
//        // Adding a stack view for the three lines of information
//        let infoStackView = UIStackView()
//        infoStackView.axis = .vertical
//        infoStackView.alignment = .leading
//        infoStackView.spacing = 5
//        mainView.addSubview(infoStackView)
//        infoStackView.translatesAutoresizingMaskIntoConstraints = false
//        
//        var infoLabelLeft: [UILabel] = []
//        var infoLabelRight: [UILabel] = []
//        
//        // Add your information labels to the stack view
//        for _ in 0..<3 {
//            let leftLabel = UILabel()
//            leftLabel.textColor = .white
//            
//            let rightLabel = UILabel()
//            rightLabel.textColor = .white
//            
//            let lineStackView = UIStackView(arrangedSubviews: [leftLabel, rightLabel])
//            lineStackView.axis = .horizontal
//            lineStackView.spacing = 10
//            infoStackView.addArrangedSubview(lineStackView)
//            
//            // Append the labels to the arrays
//            infoLabelLeft.append(leftLabel)
//            infoLabelRight.append(rightLabel)
//        }
//        
//        NSLayoutConstraint.activate([
//            centralStackView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
//            centralStackView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 100),
//            infoStackView.topAnchor.constraint(equalTo: centralStackView.bottomAnchor, constant: 50),
//            infoStackView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 20),
//            infoStackView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
//        ])
//    }
//    
//}
//
//
//
