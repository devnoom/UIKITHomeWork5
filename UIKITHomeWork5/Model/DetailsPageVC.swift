import UIKit

class DetailsPageVC: UIViewController {
    var profileImageView = UIImageView()
    var nameLabel = UILabel()
    var ageLabel = UILabel()
    var genderLabel = UILabel()
    var hobbyLabel =  UILabel()
    
    var contact: Contacts?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
      
        
    }
    func style() {
        view.backgroundColor = .lightGray
        let topStackView = UIStackView()
        topStackView.axis = .vertical
        topStackView.alignment = .center
        topStackView.spacing = 10
        topStackView.backgroundColor = .black
        
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = 75 / 2
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.widthAnchor.constraint(equalToConstant: 75).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: 75).isActive = true
        
        
        
        
        let profileImageViewContainer = UIView()
        profileImageViewContainer.addSubview(profileImageView)
        topStackView.addArrangedSubview(profileImageViewContainer)
        
        nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        nameLabel.textColor = .white
        
        topStackView.addArrangedSubview(nameLabel)
        
        view.addSubview(topStackView)
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topStackView.topAnchor.constraint(equalTo: view.topAnchor),
            topStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topStackView.heightAnchor.constraint(equalToConstant: 300)
        ])
        
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.layer.borderWidth = 0.2
        tableView.layer.cornerRadius = 20
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topStackView.bottomAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -320)
        ])
        
        // Load data
        if let contact = contact {
            nameLabel.text = contact.FullName
            ageLabel.text = "Age: \(contact.age)"
            genderLabel.text = "Gender: \(contact.gender)"
            hobbyLabel.text = "Hobby: \(contact.hobby)"
            profileImageView.image = contact.image
        }
    }

}

extension DetailsPageVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .value1, reuseIdentifier: nil)
        cell.textLabel?.font = UIFont.systemFont(ofSize: 16)
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Gender"
            cell.detailTextLabel?.text = contact?.gender
        case 1:
            cell.textLabel?.text = "Age"
            cell.detailTextLabel?.text = contact?.age
        case 2:
            cell.textLabel?.text = "Hobby"
            cell.detailTextLabel?.text = contact?.hobby
        default:
            break
        }
        
        return cell
    }
}

#Preview {
    DetailsPageVC()
}
