//
//  LoginViewController.swift
//  LoginandRegister
//
//  Created by Siriluck on 8/12/2560 BE.
//  Copyright © 2560 Panupongp. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var usernamefield: UITextField!
    @IBOutlet weak var passwordfield: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        (UserDefaults.standard.set(false, forKey: "isLogin"))

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func LogIn(_ sender: Any) {
        let username = usernamefield.text;
        let password = passwordfield.text;
        let usernamestore = UserDefaults.standard.string(forKey: "usernamedummy")
        let passwordstore = UserDefaults.standard.string(forKey: "passworddummy")
        if( username == usernamestore && password == passwordstore){
        UserDefaults.standard.set(true, forKey: "isLogin")
            UserDefaults.standard.synchronize()
            self.performSegue(withIdentifier: "Login2MainApp", sender: nil)        }
        else{
        Alertmassage(text: "Password incorrect!!!!")
        }
        
      
    }
    private func Alertmassage(text:String){
        let textalercontrol = UIAlertController(title: "Alert", message: text, preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:nil)
        textalercontrol.addAction(okAction)
        self.present(textalercontrol,animated:true,completion:nil)
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
