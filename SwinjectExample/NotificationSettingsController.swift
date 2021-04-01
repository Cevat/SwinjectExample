//
//  NotificationSettingsController.swift
//  SwinjectExample
//
//  Created by Cevat Balaban on 30.03.2021.
//

import UIKit

class NotificationSettingsController: UIViewController {
    
    var userDefaultService: UserDefaultsService?
    @IBOutlet weak var pushNotificationSwtch: UISwitch!
    @IBOutlet weak var smsSwtch: UISwitch!
    @IBOutlet weak var emailSwtch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userDefaultService = userDefaultService else { fatalError("Missing dependencies") }
        
        pushNotificationSwtch.isOn = userDefaultService.isPushNotificationActive
        smsSwtch.isOn = userDefaultService.isSMSActive
        emailSwtch.isOn = userDefaultService.isEmailActive
    }
    @IBAction func pushNotificationSwitchChanged(_ sender: Any) {
        guard let userDefaultService = userDefaultService else { fatalError("Missing dependencies") }
        userDefaultService.isPushNotificationActive = pushNotificationSwtch.isOn
    }
    @IBAction func smsSwitchChanged(_ sender: Any) {
        guard let userDefaultService = userDefaultService else { fatalError("Missing dependencies") }
        userDefaultService.isSMSActive = smsSwtch.isOn
    }
    @IBAction func emailSwitchChanged(_ sender: Any) {
        guard let userDefaultService = userDefaultService else { fatalError("Missing dependencies") }
        userDefaultService.isEmailActive = emailSwtch.isOn
    }
}
