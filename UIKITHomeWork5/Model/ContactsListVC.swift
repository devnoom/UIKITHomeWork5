//
//  ContactsListVC.swift
//  UIKITHomeWork5
//
//  Created by MacBook Air on 11.04.24.
//

import UIKit

class ContactsListVC: UIViewController {
    var scrollView = UIScrollView()
        var contentView = UIView()
        var stackView = UIStackView()
    var tableView = UITableView()
    var contactsDictionary = [String: [Contacts]]()
    var contactSections = [String]()
    let profileImageView: UIImageView = {
           let imageView = UIImageView(image: UIImage(named: "Avatar1")) // Set your image here
           imageView.contentMode = .scaleAspectFit
           return imageView
       }()
    let profileNameLabel: UILabel = {
            let label = UILabel()
            label.text = "IOS SQUAD"// Set your name here
            label.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
            label.textAlignment = .center
            return label
        }()
    
    struct Cells {
        static let ContactCell = "ContactCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = ""
        configureNavigationBar()
        configurateTableView()
        fetchDataAndConfigureSections()
    }
    
    func configureNavigationBar() {
        
           let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 44))
        let mainLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
        mainLabel.text = "IOS SQUAD"
        mainLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        
           let imageView = UIImageView(image: UIImage(named: "Avatar7"))
        imageView.contentMode = .scaleAspectFill
           imageView.frame = CGRect(x: 40, y: 50, width: 60, height: 60)
        imageView.layer.cornerRadius = 30
        
        
           
           let nameLabel = UILabel(frame: CGRect(x: 100, y: 60, width: 150, height: 44))
        nameLabel.text = "Archil Menabde"
           nameLabel.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        nameLabel.textAlignment = .center
           
           titleView.addSubview(imageView)
           titleView.addSubview(nameLabel)
        titleView.addSubview(mainLabel)
           
           navigationItem.titleView = titleView
       }
  
    
    func configurateTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 50
        tableView.register(ContactCell.self, forCellReuseIdentifier: Cells.ContactCell)
        tableView.pin(to: view)
    }
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    func fetchDataAndConfigureSections() {
        let contacts = fetchData().sorted(by: { $0.FullName < $1.FullName })
        for contact in contacts {
            let firstLetter = contact.firstLetter
            if var contactsWithSameFirstLetter = contactsDictionary[firstLetter] {
                contactsWithSameFirstLetter.append(contact)
                contactsDictionary[firstLetter] = contactsWithSameFirstLetter
            } else {
                contactsDictionary[firstLetter] = [contact]
            }
        }
        contactSections = contactsDictionary.keys.sorted()
    }
    
}
    


extension ContactsListVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return contactSections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let letter = contactSections[section]
        return contactsDictionary[letter]?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return contactSections[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        
        let letter = contactSections[indexPath.section]
        if let contactsWithSameFirstLetter = contactsDictionary[letter] {
            let contact = contactsWithSameFirstLetter[indexPath.row]
            cell.textLabel?.text = contact.FullName
            
        }
        
        return cell
    }
    
    
}

extension ContactsListVC {
    
    func fetchData()-> [Contacts] {
        
        let con1 = Contacts(image: Images.avatar1, FullName: "nodar ghachava", age: "28", gender: "male", hobby: "hiking in the caucasus mountains");
        let con7 =  Contacts(image: Images.avatar2, FullName: "elene donadze",  age: "21" ,gender: "male", hobby: "collecting vintage georgian jewelry");
        let con2 = Contacts(image: Images.avatar2, FullName: "temuri chitashvili", age: "26" , gender:  "male", hobby: "developing open source software");
        let con3 = Contacts(image: Images.avatar2, FullName: "irina datoshvili", age: "24", gender: "female", hobby: "practicing aerial silk dancing");
        let con4 = Contacts(image: Images.avatar2, FullName: "tornike elyanishvili", age: "27", gender: "male", hobby: "playing classical guitar");
        let con5 = Contacts(image: Images.avatar2, FullName: "ana ioramashvili", age: "22", gender: "female", hobby: "writing short fantasy stories");
        let con9 =  Contacts(image: Images.avatar2, FullName: "nini bardavelidze", age: "23", gender: "female", hobby: "studying marine biology");
        let con10 =  Contacts(image: Images.avatar2, FullName: "barbare tepnadze", age: "25", gender: "female", hobby: "exploring minimalist baking");
        let con11 =  Contacts(image: Images.avatar2, FullName: "mariam sreseli", age: "20", gender: "female", hobby: "learning new languages");
        let con12 =  Contacts(image: Images.avatar2, FullName: "valeri mekhashishvili", age: "30", gender: "male", hobby: "competitive chess playing");
        let con13 = Contacts(image: Images.avatar2, FullName: "zuka papuashvili", age: "24", gender: "male", hobby: "restoring classic cars");
        let con14 = Contacts(image: Images.avatar2, FullName: "nutsa beriashvili", age: "24", gender: "female", hobby: "curating modern art exhibitions");
        let con15 =  Contacts(image: Images.avatar2, FullName: "luka kharatishvili", age: "28", gender: "male", hobby: "documentary filmmaking");
        let con16 = Contacts(image: Images.avatar2, FullName: "data robakidze", age: "27", gender: "male", hobby: "urban gardening");
        let con17 = Contacts(image: Images.avatar2, FullName: "nika kakhniashvili", age: "29", gender: "male", hobby: "skydiving");
        let con18 = Contacts(image: Images.avatar2, FullName: "sandro gelashvili", age: "25", gender: "male", hobby: "digital music production");
        let con19 = Contacts(image: Images.avatar2, FullName: "ana namgaladze", age: "21", gender: "female", hobby: "photographing street fashion");
        let con20 = Contacts(image: Images.avatar2, FullName: "bakar kharabadze", age: "30", gender: "male", hobby: "mountain biking");
        let con21 = Contacts(image: Images.avatar2, FullName: "archil menabde", age: "27", gender: "male", hobby: "crafting handmade pottery");
        let con22 = Contacts(image: Images.avatar2, FullName: "tamuna kakhidze", age: "22", gender: "female", hobby: "volunteering at animal shelters");
        let con23 = Contacts(image: Images.avatar2, FullName: "giorgi michitashvili", age: "23", gender: "male", hobby: "bird watching");
        let con24 =  Contacts(image: Images.avatar2, FullName: "salome topuria", age: "23", gender: "female", hobby: "yoga and meditation");
        let con25 = Contacts(image: Images.avatar2, FullName: "luka gujejiani", age: "29", gender: "male", hobby: "competitive video gaming");
        let con26 = Contacts(image: Images.avatar2, FullName: "gega tatulishvili", age: "26", gender: "male", hobby: "exploring virtual reality tech");
        let con27 = Contacts(image: Images.avatar2, FullName: "raisa badalova", age: "24", gender: "female", hobby: "ballet dancing");
        let con28 = Contacts(image: Images.avatar2, FullName: "aleksandre saroiani", age: "28", gender: "male", hobby: "astronomy and telescope making");
        let con29 = Contacts(image: Images.avatar2, FullName: "begi kopaliani", age: "29", gender: "male", hobby: "collecting rare vinyl records");
        let con30 = Contacts(image: Images.avatar2, FullName: "akaki titberidze", age: "26", gender: "male", hobby: "kayaking in whitewater rivers");
        let con31 = Contacts(image: Images.avatar2, FullName: "sandro kupatadze", age: "27", gender: "male", hobby: "scuba diving in the black sea");
        let con32 = Contacts(image: Images.avatar2, FullName: "gvantsa gvagvalia", age: "22", gender: "female", hobby: "organic gardening");
        let con33 = Contacts(image: Images.avatar2, FullName: "vano kvakhadze", age: "24", gender: "male", hobby: "studying quantum physics");
        
        
        return [con1, con2, con3, con4, con5, con7, con9, con10, con11, con12, con13, con14, con15, con16, con17, con18, con19, con20, con21, con22, con23, con24, con25, con26, con27, con28, con29, con30, con31, con32, con33]
    }
    
}

extension ContactsListVC {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let letter = contactSections[indexPath.section]
        if let contactsWithSameFirstLetter = contactsDictionary[letter] {
            let selectedContact = contactsWithSameFirstLetter[indexPath.row]
            navigateToDetails(contact: selectedContact)
        }
    }
    
    func navigateToDetails(contact: Contacts) {
        let detailsVC = DetailsPageVC()
        detailsVC.contact = contact
        navigationController?.pushViewController(detailsVC, animated: true)
    }
}

    


