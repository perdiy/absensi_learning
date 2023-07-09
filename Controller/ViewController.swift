//
//  ViewController.swift
//  absensi
//
//  Created by Perdi Yansyah on 07/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    // Login button navigator
    @IBAction func LoginBtn(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
            self.navigationController?.pushViewController(vc, animated: true)
            vc.navigationItem.hidesBackButton = true
    }
    
    // sign Button navigator
    @IBAction func SignUpBtn(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
            self.navigationController?.pushViewController(vc, animated: true)
            vc.navigationItem.hidesBackButton = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    

    
}


