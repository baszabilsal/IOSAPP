//
//  ViewController.swift
//  LoginandRegister
//
//  Created by Siriluck on 8/12/2560 BE.
//  Copyright © 2560 Panupongp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        let isLogin = UserDefaults.standard.bool(forKey: "isLogin")
        if(isLogin){
            self.performSegue(withIdentifier: "Start2MainApp", sender: self)
        }
        else{
        self.performSegue(withIdentifier: "Start2LoginView", sender: self)
        }
        
    }

  

}

