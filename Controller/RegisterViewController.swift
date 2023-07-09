//
//  RegisterViewController.swift
//  absensi
//
//  Created by Perdi Yansyah on 07/07/23.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var userNameTf: UITextField!{
        didSet {
            userNameTf.autocorrectionType = .no
            userNameTf.autocapitalizationType = .none
            
        }
    }
    
    
    
    @IBOutlet weak var fullNameTf: UITextField!{
        didSet {
            fullNameTf.autocorrectionType = .no
            fullNameTf.autocapitalizationType = .none
            
        }
    }
    
    
    @IBOutlet weak var repeatPasswordTf: UITextField! {
        didSet {
            repeatPasswordTf.autocorrectionType = .no
            repeatPasswordTf.autocapitalizationType = .none
            repeatPasswordTf.isSecureTextEntry = true
           
        }
    }
    
    @IBOutlet weak var passwordTf: UITextField! {
        didSet {
            passwordTf.autocorrectionType = .no
            passwordTf.autocapitalizationType = .none
            passwordTf.isSecureTextEntry = true
            
        }
    }
    
    
    @IBOutlet weak var whiteRoundRegister: UIView!{
        didSet {
            whiteRoundRegister.roundCorners(corners:[.topLeft, .topRight], radius: 20.0)
        }
    }
    
    @IBOutlet weak var RegisterValidBtn: UIButton! {
        didSet {
            RegisterValidBtn.isEnabled = false
            RegisterValidBtn.layer.cornerRadius = 10
            RegisterValidBtn.backgroundColor = UIColor.systemOrange
        }
    }
    
    
 
    override func viewDidLoad() {
        
        super.viewDidLoad()

        passwordTf.addTarget(self, action: #selector(validTf), for: .editingChanged)
        userNameTf.addTarget(self, action: #selector(validTf), for: .editingChanged)
        fullNameTf.addTarget(self, action: #selector(validTf), for: .editingChanged)
        repeatPasswordTf.addTarget(self, action: #selector(validTf), for: .editingChanged)
       
    }
    
    // changed color condition
    @objc private func validTf(){
        let isValidPassword = passwordTf.validPassword(passwordTf.text ?? "")
        let isValidRepeatPassword = repeatPasswordTf.validPassword(repeatPasswordTf.text ?? "")
        if isValidPassword && isValidRepeatPassword && fullNameTf.hasText && userNameTf.hasText{
          RegisterValidBtn.isEnabled = true
            RegisterValidBtn.backgroundColor = UIColor.systemYellow
        } else {
          RegisterValidBtn.isEnabled = false
            RegisterValidBtn.backgroundColor = UIColor.systemBlue        }
      }
    // register button navigator
    @IBAction func RegisterBtn(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            self.navigationController?.pushViewController(vc, animated: true)
            vc.navigationItem.hidesBackButton = true
    }
    
    // login button navigator
    @IBAction func LoginBtn(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            self.navigationController?.pushViewController(vc, animated: true)
            vc.navigationItem.hidesBackButton = true
    }
    

}
