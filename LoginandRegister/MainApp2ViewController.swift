//
//  MainApp2ViewController.swift
//  LoginandRegister
//
//  Created by Siriluck on 8/12/2560 BE.
//  Copyright © 2560 Panupongp. All rights reserved.
//

import UIKit

class MainApp2ViewController: UIViewController {
    @IBOutlet weak var buttonprofile: UIButton!
    @IBOutlet weak var Viewcontrol: UIView!
  
    @IBOutlet weak var buttonvideo: UIButton!

    @IBOutlet weak var buttonabout: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.Viewcontrol.layer.cornerRadius = 30
        self.buttonprofile.layer.cornerRadius = 30
        self.buttonvideo.layer.cornerRadius = 30
        self.buttonabout.layer.cornerRadius = 30
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func logout(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "isLogin")
        UserDefaults.standard.synchronize()
        self.performSegue(withIdentifier: "Main2toLogin", sender: self)
    }
    
    @IBAction func profileclick(_ sender: Any) {
        self.performSegue(withIdentifier: "Main2toMain", sender: nil)

    }
    @IBAction func videoclick(_ sender: Any) {
    }
    @IBAction func aboutclick(_ sender: Any) {
        self.performSegue(withIdentifier: "Main2toMain3", sender: nil)

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
