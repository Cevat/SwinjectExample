//
//  UserDefaultsService.swift
//  SwinjectExample
//
//  Created by Cevat Balaban on 28.03.2021.
//

import Foundation

extension UserDefaults {

    subscript<T>(key: String) -> T? {
        get {
            return value(forKey: key) as? T
        }
        set {
            set(newValue, forKey: key)
        }
    }
}

public class UserDefaultsService {
    
    var userName : String {
        get{
            return UserDefaults.standard[#function] ?? ""
        }set{
            UserDefaults.standard[#function] = newValue
        }
    }
    
    var userSurname : String {
        get{
            return UserDefaults.standard[#function] ?? ""
        }set{
            UserDefaults.standard[#function] = newValue
        }
    }
    
    var userEmail : String {
        get{
            return UserDefaults.standard[#function] ?? ""
        }set{
            UserDefaults.standard[#function] = newValue
        }
    }
    
    var userPhoneNumber : String {
        get{
            return UserDefaults.standard[#function] ?? ""
        }set{
            UserDefaults.standard[#function] = newValue
        }
    }
    
    var isPushNotificationActive : Bool {
        get{
            return UserDefaults.standard[#function] ?? true
        }set{
            UserDefaults.standard[#function] = newValue
        }
    }
    
    var isSMSActive : Bool {
        get{
            return UserDefaults.standard[#function] ?? true
        }set{
            UserDefaults.standard[#function] = newValue
        }
    }
    
    var isEmailActive : Bool {
        get{
            return UserDefaults.standard[#function] ?? true
        }set{
            UserDefaults.standard[#function] = newValue
        }
    }
}
