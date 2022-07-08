//
//  ContactInfoViewController.swift
//  contacts
//
//  Created by Rafael Shamsutdinov on 03.07.2022.
//

import UIKit

struct Contact {
    var name: String
    var number: String
}

class ContactTableViewController: UITableViewController {

    let contacts: [Contact] = [
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

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "ContactViewCell",
            for: indexPath
        ) as? ContactViewCell else { return UITableViewCell() }
        
        cell.configure(with: contacts[indexPath.row])
        
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let contactInfoViewController = storyboard?.instantiateViewController(
            withIdentifier: "ContactInfoViewController"
        ) as? ContactInfoViewController else { return }
        
        contactInfoViewController.contact = contacts[indexPath.row]
        present(contactInfoViewController, animated: true)
    }
}
