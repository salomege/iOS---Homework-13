import UIKit

class ColorPalette: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
                
                NSLayoutConstraint.activate([
                    stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
                    stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
                    stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                    stackView.bottomAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
                ])
                
                for _ in 1...6 {
                    let rectangle = UIView()
                    rectangle.heightAnchor.constraint(equalToConstant: 20).isActive = true
                    rectangle.backgroundColor = generateRandomColor()
                    stackView.addArrangedSubview(rectangle)
                }
            }
            
            func generateRandomColor() -> UIColor {
                let red = CGFloat.random(in: 0...1)
                let green = CGFloat.random(in: 0...1)
                let blue = CGFloat.random(in: 0...1)
                return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
            }
        }
    
