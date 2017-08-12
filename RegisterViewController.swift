//
//  RegisterViewController.swift
//  LoginandRegister
//
//  Created by Siriluck on 8/12/2560 BE.
//  Copyright © 2560 Panupongp. All rights reserved.
//

import UIKit


class RegisterViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var repassword: UITextField!
       override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func create(_ sender: Any) {
        checkpolicy(Username: username.text!, Password: password.text!, Repassword: repassword.text!)
    }
    private func  checkpolicy(Username:String,Password:String,Repassword:String){
      
        //check emptry fields
        if(Username.isEmpty ||  Password.isEmpty || Repassword.isEmpty){
            
            Alertmassage(text: "All fields are Required ")
            return
        }
        //check passsword match
        if (Password != Repassword) {
            
            Alertmassage(text: "Password don't match")
            return
            
        }
        
        //savedata
        NSLog("Username is :"+Username)
        print("Username is :"+Username)
        NSLog("Password is :"+Password)
        print("Password is :"+Password)
        UserDefaults.standard.setValue(Username, forKey: "usernamedummy")
        UserDefaults.standard.setValue(Password, forKey: "passworddummy")
        UserDefaults.standard.synchronize()
        let registerjson = RegisterTools()
        var resp = registerjson.RegisterbyJson(Username: Username, Password: Password)
        
        //success alert
        let successcontrol = UIAlertController(title: "Alert", message: "Register Successful", preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default){action in self.dismiss(animated: true, completion: nil)}
        successcontrol.addAction(okAction)
        self.present(successcontrol,animated:true,completion:nil)
        
    }
    //alert text box
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
