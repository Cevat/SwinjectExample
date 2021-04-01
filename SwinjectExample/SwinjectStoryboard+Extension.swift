//
//  SwinjectStoryboard+Extension.swift
//  SwinjectExample
//
//  Created by Cevat Balaban on 28.03.2021.
//

import Foundation
import Swinject
import SwinjectStoryboard
import SwinjectAutoregistration

extension SwinjectStoryboard {
   @objc class func setup() {
    defaultContainer.autoregister(UserDefaultsService.self, initializer: UserDefaultsService.init)
    
    defaultContainer.storyboardInitCompleted(UserInfoViewController.self) { resolver, controller in
      controller.userDefaultService = resolver ~> UserDefaultsService.self
    }
    
    defaultContainer.storyboardInitCompleted(NotificationSettingsController.self) { resolver, controller in
      controller.userDefaultService = resolver ~> UserDefaultsService.self
    }
   }
}
