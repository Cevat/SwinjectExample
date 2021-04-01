//
//  UserInfoViewController.swift
//  SwinjectExample
//
//  Created by Cevat Balaban on 28.03.2021.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var surNameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var phoneNumberTxt: UITextField!
    
    var userDefaultService: UserDefaultsService?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userDefaultService = userDefaultService else { fatalError("Missing dependencies") }
        nameTxt.text = userDefaultService.userName
        surNameTxt.text = userDefaultService.userSurname
        emailTxt.text = userDefaultService.userEmail
        phoneNumberTxt.text = userDefaultService.userPhoneNumber
    }
    
    @IBAction func saveButtonClicked(_ sender: Any) {
        guard let userDefaultService = userDefaultService else { fatalError("Missing dependencies") }
        userDefaultService.userName = nameTxt.text ?? ""
        userDefaultService.userSurname = surNameTxt.text ?? ""
        userDefaultService.userEmail = emailTxt.text ?? ""
        userDefaultService.userPhoneNumber = phoneNumberTxt.text ?? ""
        self.dismiss(animated: true, completion: nil)
    }
}
