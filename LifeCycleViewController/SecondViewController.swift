//
//  SecondViewController.swift
//  LifeCycleViewController
//
//  Created by Stepan Vasilyeu on 12/5/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var openThirdViewController: UIButton! {
        didSet {
            print("\(openThirdViewController.currentTitle ?? "")")
        }
    }
    
    var someProperties: String! {
        didSet {
            print(someProperties ?? "")
        }
    }
    
    // Срабатывает после загрузки View,
    // вызывается один раз за весь жизненный цикл ViewController-а
    override func viewDidLoad() {
        super.viewDidLoad()
        printMessage()
    }
    
    // Стабатывает перед появлением View на экране
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    
    // Срабатывает перед тем как размер вью поменяется под экран
    // например если размеры динамические под размер экрана - настройка тут
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        printMessage()
    }
    
    // Срабатывает после того как размер вью изменился под размер экрана
    // тут можно сохранять последнее состояние объектаыг
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        printMessage()
    }
    
    // Обновление констрейнтов
    override func updateViewConstraints() {
        printMessage()
        super.updateViewConstraints() // <- вызов именно в конце метода
    }
    
    // Срабатывает после появления вью на экране
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printMessage()
    }
    
    // Срабатывает при повороте экрана
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        printMessage()
    }
    
    // Срабатывает перед тем, как вью закроется
    // обычно ставят на паузу выполн. действия,
    // отменяют ориентацию, стиль статус бара и тд
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
    }
    
    // Срабатывает после закрытия вью
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }
}

extension UIViewController {
    func printMessage(function: String = #function) {
        print("\(title ?? "nil"): \(function)")
    }
}
