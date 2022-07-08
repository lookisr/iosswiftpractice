import UIKit
struct Contact{
    var name: String
    var number: String
}
class ContactTableViewController: UITableViewController {
    let contactslist: [Contact] = [
        Contact(name:"Rafael", number:"89600407647"),
        Contact(name:"Nikita", number: "88005553535"),
        Contact(name:"Ilya", number:"89438293434"),
        Contact(name:"Rafael", number:"89600407647"),
        Contact(name:"Nikita", number: "88005553535"),
        Contact(name:"Ilya", number:"89438293434"),
        Contact(name:"Rafael", number:"89600407647"),
        Contact(name:"Nikita", number: "88005553535"),
        Contact(name:"Ilya", number:"89438293434")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return contactslist.count
        }

        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactViewCell", for: indexPath) as? ContactViewCell else { return UITableViewCell()}
            print("test")
            cell.nameLabel.text = contactslist[indexPath.row].name
            cell.phoneLabel.text = contactslist[indexPath.row].number
            return cell
        }
        
        override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            90
        }
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            
            guard let contactInfo = storyboard?.instantiateViewController(withIdentifier: "ContactInfoViewController") as? ContactInfoViewController else { return }
            
            contactInfo.item = contactslist[indexPath.row]
            present(contactInfo, animated: true)

    

}
}
