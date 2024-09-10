//
//  SignInVC.swift
//  TravelHelper
//
//  Created by Вадим Игнатенко on 9.06.24.
//

import UIKit


enum SighnOnWithServices: String, CaseIterable {
    
    case enterUserValue = "Введите имя пользователя"
    case contOnApple = "Продолжить в Apple"
    case contOnVK = "Продолжитьл в VK"
    case contOnGoogle = "Продолжить в Google"
    case contOnFacebook = "Продолжить в Facebook"
    case contOnInst = "Продолжить в Instagram"
}


final class SighnInVC: UIViewController {
    
    // MARK: - PROPERTIES
    
    private var namesButton = SighnOnWithServices.allCases
    private var collectionButtons = [UIButton]()
    
    private let registerButton: UIButton = {
        let button = UIButton()
        button.setTitle("Регистрация", for: .normal)
        return button
    }()
    
    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Войдите в ???"
        return label
    }()
    
    private let registerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Еще нет аккаунта"
        return label
    }()
    
    private let stackViewButtons: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .fill
        stackView.spacing = 5
        return stackView
    }()
    
    
    // MARK: - LIFE CIRCLE VC
    override func viewDidLoad() {
        super.viewDidLoad()
        setuoUI()
    }
    
    
    // MARK: - FUNCTION
    
    //Функции для настройки кнопок
    private func addButtons() {
        for name in namesButton {
            let button = UIButton()
            collectionButtons.append(button)
            button.setTitle(name.rawValue, for: .normal)
            buttonSettings(but: button)
            stackViewButtons.addArrangedSubview(button)
        }
    }
    
    private func buttonSettings(but: UIButton) {
        but.translatesAutoresizingMaskIntoConstraints = false
        but.layer.cornerRadius = 5
        but.layer.borderWidth = 3
        but.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    }
    
    private func setuoUI() {
        
    }
    
    
    
    
    
    // Старый бред -- может что нибудь пригодится
    /*
    private func setupUI() {
        
        view.addSubview(welcomeLabel)
        view.addSubview(loginTF)
        view.addSubview(passwordTF)
        view.addSubview(butSignIn)
        view.addSubview(butSignUp)
        view.addSubview(faceIDButton)

        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.numberOfLines = 0
        
        
        loginTF.translatesAutoresizingMaskIntoConstraints = false
        loginTF.layer.cornerRadius = 15
        
        passwordTF.translatesAutoresizingMaskIntoConstraints = false
        passwordTF.layer.cornerRadius = 15
        
        butSignIn.translatesAutoresizingMaskIntoConstraints = false
        butSignIn.layer.cornerRadius = 15
        butSignIn.layer.borderWidth = 5
        butSignIn.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        
        butSignUp.translatesAutoresizingMaskIntoConstraints = false
        butSignUp.layer.cornerRadius = 15
        butSignUp.layer.borderWidth = 5
        butSignUp.layer.borderColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        
        faceIDButton.translatesAutoresizingMaskIntoConstraints = false
        faceIDButton.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        
        setupConstraints()
        updateViewModel()
    }
    
    private func updateViewModel() {
        
    }
    
    private func setupConstraints() {
            // Add constraints for welcomeLabel
            NSLayoutConstraint.activate([
                welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
            
            // Add constraints for loginTF
            NSLayoutConstraint.activate([
                loginTF.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 20),
                loginTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                loginTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                loginTF.heightAnchor.constraint(equalToConstant: 50)
            ])
            
            // Add constraints for passwordTF
            NSLayoutConstraint.activate([
                passwordTF.topAnchor.constraint(equalTo: loginTF.bottomAnchor, constant: 20),
                passwordTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                passwordTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                passwordTF.heightAnchor.constraint(equalToConstant: 50)
            ])
            
            // Add constraints for butSignIn
            NSLayoutConstraint.activate([
                butSignIn.topAnchor.constraint(equalTo: passwordTF.bottomAnchor, constant: 20),
                butSignIn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                butSignIn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                butSignIn.heightAnchor.constraint(equalToConstant: 50)
            ])
            
            // Add constraints for butSignUp
            NSLayoutConstraint.activate([
                butSignUp.topAnchor.constraint(equalTo: butSignIn.bottomAnchor, constant: 20),
                butSignUp.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                butSignUp.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                butSignUp.heightAnchor.constraint(equalToConstant: 50)
            ])
            
            // Add constraints for faceIDButton
            NSLayoutConstraint.activate([
                faceIDButton.topAnchor.constraint(equalTo: butSignUp.bottomAnchor, constant: 20),
                faceIDButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                faceIDButton.widthAnchor.constraint(equalToConstant: 50),
                faceIDButton.heightAnchor.constraint(equalToConstant: 50),
                faceIDButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
            ])
        }
  */
}
