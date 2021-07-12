//
//
//import UIKit
//
//class LoginView: UIScrollView {
//
//
//
//    @objc func loginSuccessful() {
//        //ProfileViewController.show(ProfileViewController: UIViewController, sender: LoginViewController?) не разобрался, как вызвать данный метод
//       }
//
//    let logoView: UIImageView = {
//        let logoImage = UIImage.init(named: "logo")
//        let logo = UIImageView()
//        logo.backgroundColor = .red
//        logo.layer.cornerRadius = 60
//        logo.image = logoImage
//        logo.translatesAutoresizingMaskIntoConstraints = false
//        return logo
//    }()
//
//
//    let loginBar: UIView = {
//        let lBar = UIView()
//        lBar.backgroundColor = .systemGray6
//        lBar.layer.cornerRadius = 10
//        lBar.layer.borderWidth = 0.5
//        lBar.layer.borderColor = CGColor.init (red: 0.74, green: 0.74, blue: 0.74, alpha: 1)
//        lBar.layer.masksToBounds = true
//        lBar.translatesAutoresizingMaskIntoConstraints = false
//        return lBar
//    }()
//
//    let loginButton: UIButton = {
//        let bluePixel = UIImage.init(named: "blue_pixel")
//        let lButton = UIButton()
//        lButton.setBackgroundImage(bluePixel, for: .normal)
//        lButton.setTitle("Log in", for: .normal)
//        lButton.setTitleColor(.white, for: .normal)
//        lButton.layer.cornerRadius = 10
//        lButton.layer.masksToBounds = true
//        lButton.translatesAutoresizingMaskIntoConstraints = false
//        lButton.addTarget(self, action: #selector(loginSuccessful), for: .touchUpInside)
//        return lButton
//    }()
//
//
//
//    let loginDivideLine: UIView = {
//        let ldl = UIView()
//        ldl.backgroundColor = .lightGray
//        ldl.translatesAutoresizingMaskIntoConstraints = false
//        return ldl
//    }()
//
//
//
//
//
//    let loginString: UITextField = {
//        let lString = UITextField()
//
//
//        lString.placeholder = "Email or phone"
//        lString.translatesAutoresizingMaskIntoConstraints = false
//        return lString
//    }()
//
//    let passwordString: UITextField = {
//        let pString = UITextField()
//
//
//        pString.placeholder = "Password"
//        pString.isSecureTextEntry = true
//        pString.translatesAutoresizingMaskIntoConstraints = false
//        return pString
//    }()
//
//}
