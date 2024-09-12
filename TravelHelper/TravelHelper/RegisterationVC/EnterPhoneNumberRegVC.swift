//
//  SighnUpVC.swift
//  TravelHelper
//
//  Created by Вадим Игнатенко on 24.06.24.
//

import UIKit


class EnterPhoneNumberRegVC: UIViewController {

    private let welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Зарегистрироваться в ???"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name: "Helvetica-Bold", size: 28)
        return label
    }()
    
    private let phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "   Номер телефона"
        textField.layer.cornerRadius = 10
        //textField.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
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
        button.layer.cornerRadius = 10
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(generalStackView)
        generalStackView.addArrangedSubview(welcomeLabel)
        generalStackView.addArrangedSubview(phoneNumberTextField)
        generalStackView.addArrangedSubview(continueButton)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
//            generalStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40),
//            generalStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            generalStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            generalStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 17),
            generalStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -17),
            
            phoneNumberTextField.heightAnchor.constraint(equalToConstant: 45),
            continueButton.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    // Старая версия VC
    /*
    private let label = UILabel()
    private let textAboveName = UILabel()
    private let textAboveLogin = UILabel()
    private let textAbovePass = UILabel()
    private let textUnderName = UILabel()
    private let textUnderLogin = UILabel()
    private let textUnderPass = UILabel()
    private let nameTF = UITextField()
    private let loginTF = UITextField()
    private let passTF = UITextField()
    private let saveBut = UIButton()
    private let cancelBut = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addView()
        setupUI()
        setupConstraints()
        updateViewModel()
    }
    
    private func addView() {
        view.addSubview(label)
        view.addSubview(textAboveLogin)
        view.addSubview(textAbovePass)
        view.addSubview(textUnderName)
        view.addSubview(textAboveName)
        view.addSubview(textUnderLogin)
        view.addSubview(textUnderPass)
        view.addSubview(nameTF)
        view.addSubview(loginTF)
        view.addSubview(passTF)
        view.addSubview(saveBut)
        view.addSubview(cancelBut)
    }
    
    private func setupUI() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 22)
        label.textAlignment = .center
        
        textAboveName.translatesAutoresizingMaskIntoConstraints = false
        textAboveName.numberOfLines = 0
        textAboveName.font = .systemFont(ofSize: 17)
        
        textAboveLogin.translatesAutoresizingMaskIntoConstraints = false
        textAboveLogin.numberOfLines = 0
        textAboveLogin.font = .systemFont(ofSize: 17)
        
        textAbovePass.translatesAutoresizingMaskIntoConstraints = false
        textAbovePass.numberOfLines = 0
        textAbovePass.font = .systemFont(ofSize: 17)
        
        textUnderName.translatesAutoresizingMaskIntoConstraints = false
        textUnderName.numberOfLines = 0
        textUnderName.font = .systemFont(ofSize: 10)
        
        textUnderLogin.translatesAutoresizingMaskIntoConstraints = false
        textUnderLogin.numberOfLines = 0
        textUnderLogin.font = .systemFont(ofSize: 10)
        
        textUnderPass.translatesAutoresizingMaskIntoConstraints = false
        textUnderPass.numberOfLines = 0
        textUnderPass.font = .systemFont(ofSize: 10)
        
        textAboveName.translatesAutoresizingMaskIntoConstraints = false
        textAboveName.numberOfLines = 0
        textAboveName.font = .systemFont(ofSize: 10)
        
        nameTF.translatesAutoresizingMaskIntoConstraints = false
       
        
        loginTF.translatesAutoresizingMaskIntoConstraints = false
        
        
        passTF.translatesAutoresizingMaskIntoConstraints = false
      
        
        saveBut.translatesAutoresizingMaskIntoConstraints = false
       
        
        cancelBut.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupConstraints() {
        
    }
    
    private func updateViewModel() {
        
    }
     */
}
