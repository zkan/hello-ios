import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    private let myTableViewDelegate = MyTableViewDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "My Swift"
        
        // ใส่เลขที่ใกล้เคียงกับข้อมูลที่จะแสดง iOS จะ render ออกมาได้ไวที่สุด ปรับค่าให้เราโดยอัตโนมัติ
        tableView.estimatedRowHeight = 12
        tableView.rowHeight = UITableView.automaticDimension
        
        myTableViewDelegate.delegate = self
        
        tableView.dataSource = self
        tableView.delegate = myTableViewDelegate
        
        let nib = UINib(nibName: "MyCustomCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "myCell")
        
        AF.request("https://httpbin.org/get").response { response in
            debugPrint(response)
        }
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
        
        cell.label.text = "my custom cell @\(indexPath.row) \n my custom cell @\(indexPath.row) \n my custom cell @\(indexPath.row) \n my custom cell @\(indexPath.row) \n my custom cell @\(indexPath.row)"
        
        return cell
    }
    
}

extension ViewController: MyTableViewDelegateProtocol {
    
    func didSelectItem(_ indexPath: IndexPath) {
        print("indexPath: \(indexPath.row)")
//        performSegue(withIdentifier: "screenB", sender: nil)
    }
    
}
