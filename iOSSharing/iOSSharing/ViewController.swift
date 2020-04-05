import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    private let myTableViewDelegate = MyTableViewDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "My Swift"
        
        tableView.dataSource = self
        tableView.delegate = myTableViewDelegate
    }

    @IBAction func signinTouchUpInside(_ sender: Any) {
        print("username: \(usernameTextField.text!) and password: \(passwordTextField.text!)")
    }

}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "item: \(indexPath.row)"
        return cell
    }
    
}
