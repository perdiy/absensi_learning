//
//  LoginViewController.swift
//  absensi
//
//  Created by Perdi Yansyah on 07/07/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    // text field
    @IBOutlet weak var userNameTf: UITextField!
    
    // text field
    @IBOutlet weak var passwordTf: UITextField!{
        didSet{
          passwordTf.isSecureTextEntry = true
        }
      }
    
    // white view
    @IBOutlet weak var viewWhiteLogin: UIView!{
        didSet {
            viewWhiteLogin.roundCorners(corners:[.topLeft, .topRight], radius: 20.0)
        }
    }
    
    // button login condition
    @IBOutlet weak var LoginBtnValid: UIButton!{
        didSet {
            LoginBtnValid.isEnabled = false
            LoginBtnValid.layer.cornerRadius = 10
            LoginBtnValid.backgroundColor = UIColor.systemOrange
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTf.addTarget(self, action: #selector(validTf), for: .editingChanged)
        userNameTf.addTarget(self, action: #selector(validTf), for: .editingChanged)
        
    }
    
    // changed color condition
    @objc private func validTf(){
        let isValid = passwordTf.validPassword(passwordTf.text ?? "")
        if isValid && userNameTf.hasText{
          LoginBtnValid.isEnabled = true
            LoginBtnValid.backgroundColor = UIColor.systemYellow
        } else {
          LoginBtnValid.isEnabled = false
            LoginBtnValid.backgroundColor = UIColor.systemBlue        }
      }
    
    // button Login navigator
    @IBAction func LoginBtn(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "homeTabBar") as! UITabBarController
        self.navigationController?.pushViewController(vc, animated: true)
        vc.navigationItem.hidesBackButton = true
    }
    
    // register button navigator
    @IBAction func RegisterBtn(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        self.navigationController?.pushViewController(vc, animated: true)
        vc.navigationItem.hidesBackButton = true
    }
    // forgot password button navigator
    @IBAction func ForgotPasswordBtn(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ForgotPwdViewController") as! ForgotPwdViewController
        self.navigationController?.pushViewController(vc, animated: true)
        vc.navigationItem.hidesBackButton = true
    }
}
