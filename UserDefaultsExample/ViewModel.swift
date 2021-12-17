//
//  ViewModel.swift
//  UserDefaultsExample
//
//  Created by Pedro Menezes on 17/12/21.
//

import Foundation

protocol ViewModeling {
    func shouldShowWelcomeAlert() -> Bool
    func didPresentAlert()
}

class ViewModel: ViewModeling {
    private let alertUD: UserDefaultsUnityManager<Bool>

    init(alertUD: UserDefaultsUnityManager<Bool> = UserDefaultsOrganizer.welcomeAlert) {
        self.alertUD = alertUD
    }

    func shouldShowWelcomeAlert() -> Bool {
        let didPresentAlert = alertUD.read() ?? true
        return didPresentAlert
    }

    func didPresentAlert() {
        alertUD.save(data: true)
    }
}
