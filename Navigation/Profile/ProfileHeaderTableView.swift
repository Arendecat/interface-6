//хедер

import UIKit






class ProfileHeaderView: UIView {
    
    let fullNameLabel: UILabel = {
        let name = UILabel()
            name.text = "Queen Elsa"
            name.font = .boldSystemFont(ofSize: 18)
            name.textColor = .black
            name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    
    let avatarImageView: UIView = {
        let avaImage = UIImage.init(named: "ava")
        let ava = UIImageView()
        ava.backgroundColor = .cyan
        ava.layer.cornerRadius = 60
        ava.image = avaImage
        ava.layer.borderWidth = 3
        ava.layer.borderColor = CGColor.init(red: 255, green: 255, blue: 255, alpha: 255)
        ava.layer.masksToBounds = true
        ava.translatesAutoresizingMaskIntoConstraints = false
        return ava
    }()
        
        
    let statusLabel: UILabel = {
        let status = UILabel()
        status.text = "Every day's a little harder"
        status.font = .systemFont(ofSize: 14)
        status.textColor = .darkGray
        status.translatesAutoresizingMaskIntoConstraints = false
        return status
    }()
    
    let statusButton: UIButton = {
        let statusB = UIButton()
        statusB.backgroundColor = .blue
        statusB.layer.cornerRadius = 4
        statusB.setTitle("Show status", for: .normal)
        statusB.titleLabel?.font = .systemFont(ofSize: 14)
        statusB.setTitleColor(.white, for: .normal)
        statusB.layer.shadowOpacity = 1
        statusB.layer.shadowOffset = CGSize(width: 4, height: 4)
        statusB.layer.shadowRadius = 4
        statusB.layer.shadowColor = CGColor.init(red: 0, green: 0, blue: 0, alpha: 255)
        statusB.translatesAutoresizingMaskIntoConstraints = false
        return statusB
    }()
    
    
    
    
    
    
    private func setupSubviews() {
        contentView.addSubviews(fullNameLabel,avatarImageView,statusLabel,statusButton)
        let constraints = [
            fullNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor)
            ]
        
        
        
        NSLayoutConstraint.activate(constraints)
            
        
        
    }
}
