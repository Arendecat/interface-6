
import UIKit

class InfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func showAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Удалить пост?", message: "Пост нельзя будет восстановить", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Отмена", style: .default) { _ in
            print("Отмена")
        }
        let deleteAction = UIAlertAction(title: "Удалить", style: .destructive) { _ in
            print("Удалить")
        }
        alertController.addAction(cancelAction)
        alertController.addAction(deleteAction)
        self.present(alertController, animated: true, completion: nil)
    }
}




































//код из лекции
//
//
//
//
//
//
//
//
//
////MARK: UITableViewDataSource
//
//
//extension ProfileViewController: UITableViewDataSource {
////    func numberOfSections(in tableView: UITableView) -> Int {
////        return feed.count
////    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return feed.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell: ProfileViewController = tableView.dequeueReusableCell(
//            withIdentifier: String(describing: DeviceTableViewCell.self),
//            for: indexPath) as! DeviceTableViewCell
//
//        cell.device = Storage.tableModel[indexPath.section].devices[indexPath.row]
//
//        return cell
//    }
//
////    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
////        return Section(section: section).title
////    }
//
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: String(describing: DeviceSectionHeaderView.self)) as! DeviceSectionHeaderView
//
//        headerView.title = Storage.tableModel[section].title
//
//        return headerView
//    }
//
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        return nil
//    }
//}
//
////MARK: UITableViewDelegate
//extension ProfileViewController: UITableViewDelegate {
//
////    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
////        guard section != 0 else { return .zero }
////        return 60
////    }
//
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return .zero
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let device = Storage.tableModel[indexPath.section].devices[indexPath.row]
//
//        let detailViewController = DeviceDetailViewController(device: device)
//
//        navigationController?.pushViewController(detailViewController, animated: true)
//    }
//}
