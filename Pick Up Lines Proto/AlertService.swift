//
//  AlertService.swift
//  Pick Up Lines Proto

import UIKit

class AlertService {
    
    private init() {}
    
    static func addAlert(in vc: UIViewController,
                         completion: @escaping (String, String, String) -> Void) {
        
        let alert = UIAlertController(title: "Add Line", message: nil, preferredStyle: .alert)
        alert.addTextField { (headLineTF) in
            headLineTF.placeholder = "Enter Pick Up Line"
        }
        alert.addTextField { (quelleTF) in
            quelleTF.placeholder = "Enter quelle"
        }
        alert.addTextField { (imageLinkTF) in
            imageLinkTF.placeholder = "Enter link"
        }
        
        let action = UIAlertAction(title: "Add", style: .default) { (_) in
            guard let headLine = alert.textFields?.first?.text else {return}
           guard let quelle = alert.textFields?[1].text else {return}
               guard let imageLink = alert.textFields?.last?.text
                else { return }
            
            
            completion(headLine, quelle, imageLink)
        }
        
        alert.addAction(action)
        vc.present(alert, animated: true)
    }
    
    static func updateAlert(in vc: UIViewController,
                            pickUpLine: PickUpLine,
                            completion: @escaping (String, String, String) -> Void) {
        
        let alert = UIAlertController(title: "Update Line", message: nil, preferredStyle: .alert)
        alert.addTextField { (lineTF) in
            lineTF.placeholder = "Enter Pick Up Line"
            lineTF.text = pickUpLine.headLine
        }
        alert.addTextField { (scoreTF) in
            scoreTF.placeholder = "Enter quelle"
            scoreTF.text = pickUpLine.quelle
        }
        alert.addTextField { (emailTF) in
            emailTF.placeholder = "Enter link"
            emailTF.text = pickUpLine.imageLink
        }
        
        let action = UIAlertAction(title: "Update", style: .default) { (_) in
            guard let headLine = alert.textFields?.first?.text else { return }
               guard let quelle = alert.textFields?[1].text else { return }
               guard let imageLink = alert.textFields?.last?.text
                else { return }
            
            completion(headLine, quelle, imageLink)
        }
        
        alert.addAction(action)
        vc.present(alert, animated: true)
    }
    
}








