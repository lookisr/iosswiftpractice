//
//  ContactViewCell.swift
//  contacts
//
//  Created by Rafael Shamsutdinov on 03.07.2022.
//

import UIKit

class ContactViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!

    func configure(with contact: Contact) {
        nameLabel.text = contact.name
        phoneLabel.text = contact.number
    }
}
