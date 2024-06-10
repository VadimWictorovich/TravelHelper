//
//  SignInVC.swift
//  TravelHelper
//
//  Created by Вадим Игнатенко on 9.06.24.
//

import UIKit

final class SignInVC: UIViewController {
    
    private let welcomeLabel = UILabel()
    private let loginTF = UITextField()
    private let passwordTF = UITextField()
    private let butSignIn = UIButton()
    private let butSignUp = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(welcomeLabel)
        view.addSubview(loginTF)
        view.addSubview(passwordTF)
        view.addSubview(butSignIn)
        view.addSubview(butSignUp)

        
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
        
        updateConstraints()
        updateViewModel()
    }
    
    private func updateConstraints() {
        
    }
    
    private func updateViewModel() {
        
    }
  
}
