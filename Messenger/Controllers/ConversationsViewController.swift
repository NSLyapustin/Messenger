//
//  ViewController.swift
//  Messenger
//
//  Created by Никита Ляпустин on 23.06.2021.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let isUserLoggedIn = UserDefaults.standard.bool(forKey: "isUserLoggedIn")

        if !isUserLoggedIn {
            let loginViewController = LoginViewController()
            let navigationController = UINavigationController(rootViewController: loginViewController)
            navigationController.navigationBar.prefersLargeTitles = true
            navigationController.modalPresentationStyle = .fullScreen
            present(navigationController , animated: false)
        }
    }
}

