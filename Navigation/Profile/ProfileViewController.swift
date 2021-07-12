//контроллер
import UIKit

class ProfileViewController: UIViewController {
    
    private lazy var mainTable: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.backgroundColor = .magenta
        table.translatesAutoresizingMaskIntoConstraints = false
        table.dataSource = self
        table.delegate = self
        table.register(ProfileHeaderView.self, forHeaderFooterViewReuseIdentifier: "header")
        table.register(PostTableViewCell.self, forCellReuseIdentifier: "cellID")
        return table
    }()
    
    
    let tableHeaderView = ProfileHeaderView()
    
        override func viewDidLoad() {

        super.viewDidLoad()
        
        view.addSubview(mainTable)
        NSLayoutConstraint.activate([
            mainTable.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            mainTable.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            mainTable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainTable.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}




extension ProfileViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feed.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PostTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! PostTableViewCell
        
        cell.post = feed[indexPath.row]
//        cell.textLabel?.text = feed[indexPath.row].author
//        cell.imageView?.image = feed[indexPath.row].image
//        cell.backgroundColor = .systemPurple
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let a = ProfileHeaderView()
        return a
    }
    
}



extension ProfileViewController: UITableViewDelegate {

}
