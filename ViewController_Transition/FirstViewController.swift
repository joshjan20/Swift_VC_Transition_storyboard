//
//  ViewController.swift
//  ViewController_Transition
//
//  Created by JJ on 26/09/24.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // Create and configure a button
        let button = UIButton(type: .system)
        button.setTitle("Go to Second View Controller", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(button)
        
        // Set button constraints
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }

    @objc func buttonTapped() {
        // Perform the segue to the second view controller
        performSegue(withIdentifier: "NextViewController", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NextViewController" {
            // You can pass data to the second view controller if needed
        }
    }
}


