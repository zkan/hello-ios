import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "My Swift"
    }

    @IBAction func signinTouchUpInside(_ sender: Any) {
        print("username: \(usernameTextField.text!) and password: \(passwordTextField.text!)")
    }
}

