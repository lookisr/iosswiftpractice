//
//  ViewController.swift
//  contacts
//
//  Created by Rafael Shamsutdinov on 03.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var authorizationField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        authorizationField.placeholder = "Enter your number"
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        if let phoneNumber = authorizationField.text, phoneNumber.starts(with: "89087") {
            guard let contactTableViewController = storyboard?.instantiateViewController(withIdentifier: "ContactTableViewController") else { return }
            navigationController?.pushViewController(contactTableViewController, animated: true)
        } else {
            guard let wrongNumberViewController = storyboard?.instantiateViewController(withIdentifier: "wrongNumberViewController") else { return }
            present(wrongNumberViewController, animated: true)
        }
    }
}
