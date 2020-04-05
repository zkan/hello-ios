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
        
        let nib = UINib(nibName: "MyCustomCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "myCell")
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
//        let cell = UITableViewCell()
//        cell.textLabel?.text = "item: \(indexPath.row)"
//        return cell
        
        // ต้อง cast ให้เป็น MyCustomCell ถึงจะใช้ properties ข้างใน MyCustomCell ได้
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyCustomCell
        
        cell.label.text = "my custom cell @\(indexPath.row)"
        
        return cell
    }
    
}
