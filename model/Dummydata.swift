//
//  Dummydata.swift
//  absensi
//
//  Created by Perdi Yansyah on 09/07/23.
//

import Foundation
import UIKit

struct History {
    let id: Int
    let pt: String
    let image: UIImage
    let alamat: String
 
}

let dummyDataHistory = [
    History(
        id: 1,
        pt: "Telkomsel Smart Office",
        image: UIImage(named: "Rectangle-2")!,
        alamat: "Jl. Jend. Gatot Subroto Kav. 52. Jakarta Selatan"
       
        
    ),
    History(
        id: 2,
        pt: "Check In - PT. Phincon - 9:00 AM",
        image: UIImage(named: "Rectangle")!,
        alamat: "Office. 88 @Kasablanka Office Tower 18th Floor"
       
        
    ),
    History(
        id: 3,
        pt: "Rumah",
        image: UIImage(named: "Rectangle")!,
        alamat: "Jakarta"
       
        
    ),
  
    
]
