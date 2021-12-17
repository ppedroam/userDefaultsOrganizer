//
//  UserDefaultsUnityManager.swift
//  UserDefaultsExample
//
//  Created by Pedro Menezes on 17/12/21.
//

import Foundation

struct UserDefaultsUnityManager<T> {
    private let userDefaults: UserDefaults
    private let key: String

    init(userDefaults: UserDefaults = UserDefaults.standard,
         key: String) {
        self.userDefaults = userDefaults
        self.key = key
    }

    func save(data: T) {
        userDefaults.set(data, forKey: key)
    }

    func read() -> T? {
        return userDefaults.value(forKey: key) as? T
    }

    func delete() {
        userDefaults.removeObject(forKey: key)
    }
}
