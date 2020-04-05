import UIKit

class MyTableViewDelegate: NSObject, UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tap item: \(indexPath.section), \(indexPath.row)")
    }
}
