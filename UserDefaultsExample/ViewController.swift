//
//  ViewController.swift
//  UserDefaultsExample
//
//  Created by Pedro Menezes on 17/12/21.
//

import UIKit

class ViewController: UIViewController {
    private var viewModel: ViewModeling?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        viewModel = ViewModel()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presentWelcomeAlert()
    }

    func presentWelcomeAlert() {
        guard let viewModel = viewModel else {
            return
        }

        if viewModel.shouldShowWelcomeAlert() {
            let alert = UIAlertController(title: "Welcome", message: "This is the an app to teach one new UserDefaults pattern", preferredStyle: .alert)
            present(alert, animated: true, completion: {
                viewModel.didPresentAlert()
            })
        }
    }
}

