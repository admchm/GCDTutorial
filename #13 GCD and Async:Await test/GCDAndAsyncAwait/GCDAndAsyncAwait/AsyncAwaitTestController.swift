//
//  AsyncAwaitTestController.swift
//  GCDAndAsyncAwait
//
//  Created by Adam Chomicki on 19/06/2023.
//

import UIKit

class AsyncAwaitTestController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.isHidden = false
        
        presentAlertOnMainThread(title: "async/await", message: "After dismissing this alert, we will proceed to fetching images, using async/await.", buttonTitle: "Dismiss")
    }
}
