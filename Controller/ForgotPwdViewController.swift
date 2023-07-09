//
//  ForgotPwdViewController.swift
//  absensi
//
//  Created by Perdi Yansyah on 08/07/23.
//

import UIKit

class ForgotPwdViewController: UIViewController {
    
    @IBOutlet weak var WhiteRoundForgotPwd: UIView!{
        didSet {
            WhiteRoundForgotPwd.roundCorners(corners:[.topLeft, .topRight], radius: 20.0)
        }
    }
    
    @IBOutlet weak var KtpTf: UITextField!
    
    @IBOutlet weak var PasswordTf: UITextField! {
        didSet{
          PasswordTf.isSecureTextEntry = true
        }
      }
    
    @IBOutlet weak var RepeatPasswordTf: UITextField!{
        didSet{
          RepeatPasswordTf.isSecureTextEntry = true
        }
      }
    
    @IBOutlet weak var ResetBtnValid: UIButton! {
        didSet {
            ResetBtnValid.isEnabled = false
            ResetBtnValid.layer.cornerRadius = 10
            ResetBtnValid.backgroundColor = UIColor.systemOrange
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        PasswordTf.addTarget(self, action: #selector(validTf), for: .editingChanged)
        RepeatPasswordTf.addTarget(self, action: #selector(validTf), for: .editingChanged)
        KtpTf.addTarget(self, action: #selector(validTf), for: .editingChanged)
        
    }
    
    // changed color condition
    @objc private func validTf(){
        let isValidPassword = PasswordTf.validPassword(PasswordTf.text ?? "")
        let isValidRepeat = RepeatPasswordTf.validPassword(RepeatPasswordTf.text ?? "")
        let isValidKtp = KtpTf.validKTP(KtpTf.text ?? "")
        if isValidKtp && isValidRepeat && isValidPassword {
            ResetBtnValid.isEnabled = true
            ResetBtnValid.backgroundColor = UIColor.systemYellow
        } else {
            ResetBtnValid.isEnabled = false
            ResetBtnValid.backgroundColor = UIColor.systemBlue
            
        }
        
    }
    
    @IBAction func ResetPasswordBtn(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(vc, animated: true)
        vc.navigationItem.hidesBackButton = true
    }
    
    @IBAction func LoginBtn(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(vc, animated: true)
        vc.navigationItem.hidesBackButton = true
    }
}
