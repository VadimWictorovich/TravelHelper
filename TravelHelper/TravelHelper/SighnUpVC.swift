//
//  SighnUpVC.swift
//  TravelHelper
//
//  Created by Вадим Игнатенко on 24.06.24.
//

import UIKit

class SighnUpVC: UIViewController {

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
}
