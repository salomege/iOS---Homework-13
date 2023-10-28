//
//  HomePage.swift
//  Homework 13
//
//  Created by salome on 28.10.23.
//

import UIKit

class HomePage: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        
        let homePageStackView = UIStackView()
        homePageStackView.axis = .vertical
        homePageStackView.alignment = .center
        homePageStackView.distribution = .fill
        homePageStackView.spacing = 50
        
        let firstButton = UIButton(type: .system)
        firstButton.setTitle("Present Color Palette Page", for: .normal)
        homePageStackView.addArrangedSubview(firstButton)
        
        let secondButton = UIButton(type: .system)
        secondButton.setTitle("Push Color Palette Page", for: .normal)
        homePageStackView.addArrangedSubview(secondButton)
        
        
        view.addSubview(homePageStackView)
        homePageStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            homePageStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            homePageStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        firstButton.addAction(UIAction(handler: { [weak self] action in
            self?.navigateToColorPage()
        }), for: .touchUpInside
    )}

    
    
    func navigateToColorPage() {
        let colorPage = ColorPalette()
        present(colorPage, animated: true)
        
        
    }
}
