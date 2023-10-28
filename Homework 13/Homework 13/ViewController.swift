//
//  ViewController.swift
//  Homework 13
//
//  Created by salome on 27.10.23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "Rectangle 4")
        
        
        backgroundImage.contentMode = .top
        
        view.addSubview(backgroundImage)
        view.sendSubviewToBack(backgroundImage)
        view.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let stackView = UIStackView()
               stackView.axis = .vertical
               stackView.alignment = .center
               stackView.distribution = .fill
               stackView.spacing = 20
        
        
        let imageView = UIImageView (image: UIImage(named: "Ellipse 29"))
        imageView.contentMode = .scaleAspectFit // Customize the content mode
        stackView.addArrangedSubview(imageView)
        view.addSubview(stackView)
            
            // Set constraints to position and size the stack view
            stackView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                imageView.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 51)
            ])
        let label1 = UILabel()
        label1.text = "Sign In"
        stackView.addArrangedSubview(label1)
        label1.font = UIFont.systemFont(ofSize: 22)
        
        let emailTextField = UITextField()
        emailTextField.placeholder = "Email"
        emailTextField.borderStyle = .roundedRect
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.heightAnchor.constraint(equalToConstant: 53).isActive = true
        emailTextField.widthAnchor.constraint(equalToConstant: 289).isActive = true
        stackView.addArrangedSubview(emailTextField)
        
        let passwordTextField = UITextField()
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.heightAnchor.constraint(equalToConstant: 53).isActive = true
        passwordTextField.widthAnchor.constraint(equalToConstant: 289).isActive = true
        stackView.addArrangedSubview(passwordTextField)
        
        let textLabelForQuestion = UILabel()
        textLabelForQuestion.text = "Forgot Your Password?"
        textLabelForQuestion.font = UIFont.systemFont(ofSize: 14)
        textLabelForQuestion.textAlignment = .right
        stackView.addArrangedSubview(textLabelForQuestion)
        
        let containerView = UIView()
        containerView.addSubview(textLabelForQuestion)
        stackView.addArrangedSubview(containerView)
        
        let signInButton = UIButton(type: .system)
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        signInButton.setTitleColor(.white, for: .normal)
        signInButton.backgroundColor = .systemBlue
        signInButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        signInButton.widthAnchor.constraint(equalToConstant: 292).isActive = true
        signInButton.layer.cornerRadius = 20
        stackView.addArrangedSubview(signInButton)
        
        let labelOR = UILabel()
        labelOR.text = "---------- Or ----------"
        labelOR.font = UIFont.systemFont(ofSize: 14)
        stackView.addArrangedSubview(labelOR)
        
        let subStackView = UIStackView()
        subStackView.axis = .horizontal
        subStackView.alignment = .center
        subStackView.distribution = .fillEqually
        
        let symbolG = UIImageView(image: UIImage(named: "Frame 10"))
        let symbolF = UIImageView(image: UIImage(named: "Frame 11"))
        let symbolIN = UIImageView(image: UIImage(named: "Frame 12"))
        
        subStackView.addArrangedSubview(symbolG)
        subStackView.addArrangedSubview(symbolF)
        subStackView.addArrangedSubview(symbolIN)
        stackView.addArrangedSubview(subStackView)
        
        let signUpOfferLabel = UILabel()
        signUpOfferLabel.text = "Don’t have an account. Sign Up"
        stackView.addArrangedSubview(signUpOfferLabel)
        
 
        signInButton.addAction(UIAction(handler: { [weak self] action in
                    if let email = emailTextField.text, !email.isEmpty,
                       let password = passwordTextField.text, !password.isEmpty {

                        self?.navigateToHomePage()
                    } else {
                        // If any field is empty, show an alert or perform an action
                        self?.showAlert(message: "Please enter both email and password.")
                    }
                }), for: .touchUpInside)
            

        
    }
    func navigateToHomePage() {
        let homePG = HomePage()
        present(homePG, animated: true)
        
    }
    func showAlert(message: String) {
           let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
           let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
           alert.addAction(okAction)
           present(alert, animated: true, completion: nil)
       }
}
