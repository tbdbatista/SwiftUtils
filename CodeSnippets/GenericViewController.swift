## Creates a generic ViewController with view code

import UIKit

class ViewController: UIViewController {
    let stackView = UIStackView()
    let mainLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSelfView()
        setupStackView()
        setupMainLabelView()
    }
    
    private func setupSelfView() {
        self.view.backgroundColor = .white
        self.view.addSubview(stackView)
        self.stackView.addArrangedSubview(mainLabel)
    }
    
    private func setupStackView() {
    stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    private func setupMainLabelView() {
        mainLabel.text = "Main Label"
        mainLabel.font = UIFont(name: "Times", size: 30)
        mainLabel.textAlignment = .center
    }
}
