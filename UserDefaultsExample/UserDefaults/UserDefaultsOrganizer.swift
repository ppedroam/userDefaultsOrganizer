//
//  UserDefaultsOrganizer.swift
//  UserDefaultsExample
//
//  Created by Pedro Menezes on 17/12/21.
//

import Foundation

enum UserDefaultsOrganizer {
    static let welcomeAlert = UserDefaultsUnityManager<Bool>(key: UserDefaultsKeys.welcomeAlert.rawValue)
}
