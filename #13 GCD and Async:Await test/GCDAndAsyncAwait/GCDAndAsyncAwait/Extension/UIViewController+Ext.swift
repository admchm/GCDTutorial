//
//  UIViewController+Ext.swift
//  GCDAndAsyncAwait
//
//  Created by Adam Chomicki on 19/06/2023.
//

import UIKit

extension UIViewController {
    
    func presentAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        
        DispatchQueue.main.async { [weak self] in
            let alertVC = AlertViewController(alertTitle: title, message: message, buttonTitle: buttonTitle)
            
            alertVC.modalTransitionStyle = .crossDissolve
            alertVC.modalPresentationStyle = .overFullScreen
            
            self?.present(alertVC, animated: true)
        }
    }
}
