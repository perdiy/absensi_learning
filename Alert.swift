//
//  Alert.swift
//  absensi
//
//  Created by Perdi Yansyah on 09/07/23.
//

import Foundation
import UIKit

class AlertManager{
  private static func showAlert(on vc: UIViewController, title:String, message: String?){
    DispatchQueue.main.async{
      let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
      alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
      vc.present(alert, animated: true)
    }
  }
  public static func showEmptyPasswordAlert(on vc:UIViewController){
    self.showAlert(on: vc, title: "Invalid Data", message: "Data Kosong!")
  }
  public static func showNotStrongPasswordAlert(on vc:UIViewController){
    self.showAlert(on: vc, title: "Invalid Password", message: "Password Harus Strong!")
  }
  public static func showDifferentPasswordAlert(on vc:UIViewController){
    self.showAlert(on: vc, title: "Invalid Password", message: "Password Tidak Sama!")
  }
  public static func invalidKTP(on vc:UIViewController){
    self.showAlert(on: vc, title: "Invalid Data", message: "Nomor KTP Tidak Valid!")
  }
}
