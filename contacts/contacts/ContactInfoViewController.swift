//
//  ContactInfoViewController.swift
//  contacts
//
//  Created by Rafael Shamsutdinov on 03.07.2022.
//

import UIKit

class ContactInfoViewController: UIViewController {

    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var phoneContactLabel: UILabel!

    var contact: Contact?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        phoneContactLabel.text = contact?.number
        contactNameLabel.text = contact?.name
    }
}
