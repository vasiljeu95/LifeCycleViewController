//
//  ThirdViewController.swift
//  LifeCycleViewController
//
//  Created by Stepan Vasilyeu on 12/5/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printMessage()
    }
    
    // Срабатывает перед тем, как вью закроется
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    // Срабатывает после закрытия вью
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }
    
    deinit {
        printMessage()
    }
    
    @IBAction func closeButton() {
        dismiss(animated: true)
    }
}
