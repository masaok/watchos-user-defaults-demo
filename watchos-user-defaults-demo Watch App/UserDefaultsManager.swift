//
//  UserDefaultsManager.swift
//  watchos-user-defaults-demo Watch App
//

import Foundation

struct UserDefaultsManager {
    private static let counterKey = "counterKey"
    
    static var counter: Int {
        get {
            return UserDefaults.standard.integer(forKey: counterKey)
        }
        set {
            UserDefaults.standard.set(newValue, forKey: counterKey)
        }
    }
}
