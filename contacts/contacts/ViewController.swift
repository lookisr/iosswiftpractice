//
//  ViewController.swift
//  contacts
//
//  Created by Rafael Shamsutdinov on 03.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var authorizationfield: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        authorizationfield.placeholder = "Enter your number"
    }
  @IBAction func ButtonDidTap(_ sender: Any) {
      if (NSPredicate(format: "SELF MATCHES %@", "^89087\\d*")).evaluate(with: authorizationfield.text){
          guard let contactslist = storyboard?.instantiateViewController(withIdentifier: "ContactTableViewController") else {return}
          navigationController?.pushViewController(contactslist, animated: true)
      }
      else {
          guard let wrongNumberViewController = storyboard?.instantiateViewController(withIdentifier: "wrongNumberViewController") else { return }
          present(wrongNumberViewController, animated: true)
      }
}
}
