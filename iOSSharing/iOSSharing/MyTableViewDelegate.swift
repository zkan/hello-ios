import UIKit

protocol MyTableViewDelegateProtocol: class {
    func didSelectItem(_ indexPath: IndexPath)
}

class MyTableViewDelegate: NSObject, UITableViewDelegate {
    weak var delegate: MyTableViewDelegateProtocol?
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tap item: \(indexPath.section), \(indexPath.row)")
        delegate?.didSelectItem(indexPath)
    }
}
