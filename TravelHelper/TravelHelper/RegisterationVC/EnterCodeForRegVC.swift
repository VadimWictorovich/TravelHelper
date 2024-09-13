//
//  EnterSMSCodeRegVC.swift
//  TravelHelper
//
//  Created by Вадим Игнатенко on 12.09.24.
//

import UIKit

class EnterCodeForRegVC: UIViewController {
    
    // ?Timer?
    private var timerValue = 60
    private var timer: Timer?
    //
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Вам позвонят"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name: "Helvetica-Bold", size: 20)
        return label
    }()
    
    private let codeTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "   Код из 4-х цифр"
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 1
        textField.layer.borderColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        return textField
    }()
    
    private let continueButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Продолжить", for: .normal)
        button.setTitleColor( .white, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        button.layer.cornerRadius = 15
        return button
    }()
    
    private let sendSMSCodeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Отравить SMS через 60", for: .normal)
        button.setTitleColor( .darkGray, for: .normal)
        //button.state = .
        button.isOpaque = true
        //button.isEnabled = true
        button.layer.borderWidth = 1
        button.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        button.layer.cornerRadius = 15
        return button
    }()
    
    private let generalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 30
        return stackView
    }()
    
    private let buttonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 10
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI () {
        view.backgroundColor = .white
        view.addSubview(generalStackView)
        generalStackView.addArrangedSubview(label)
        generalStackView.addArrangedSubview(codeTextField)
        generalStackView.addArrangedSubview(buttonsStackView)
        buttonsStackView.addArrangedSubview(continueButton)
        buttonsStackView.addArrangedSubview(sendSMSCodeButton)
        startTimer()
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
//            generalStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
//            generalStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            generalStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            generalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 17),
            generalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -17),
            
            codeTextField.heightAnchor.constraint(equalToConstant: 45),
            continueButton.heightAnchor.constraint(equalToConstant: 45),
            sendSMSCodeButton.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    @objc private func startTimer () {
        timerValue = 60
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc private func updateTimer() {
        if timerValue > 0 {
            sendSMSCodeButton.setTitle("Отравить SMS через \(String(timerValue))", for: .normal)
            timerValue -= 1
        } else {
            sendSMSCodeButton.setTitle("Отравить SMS", for: .normal)
        }
    }
    
}
