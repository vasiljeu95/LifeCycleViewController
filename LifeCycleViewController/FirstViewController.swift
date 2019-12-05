//
//  FirstViewController.swift
//  LifeCycleViewController
//
//  Created by Stepan Vasilyeu on 12/5/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC" {
            let dvc = segue.destination as! SecondViewController
            dvc.someProperties = "someProperties"
        }
    }
    
}
