//
//  etc.swift
//  LoginandRegister
//
//  Created by Siriluck on 8/12/2560 BE.
//  Copyright © 2560 Panupongp. All rights reserved.
//

import Foundation
import UIKit

public class RegisterTools {
    private var url:String = "http://www.earthlandia.com/user-registr/userRegister.php"
    
    //register request post reponse JSON
    public func RegisterbyJson(Username:String,Password:String) -> String
    {
        
        let URLJSON = URL(fileURLWithPath: url)
        let URLRequest = NSMutableURLRequest(url:URLJSON as URL)
        URLRequest.method(for: Selector(("POST")))
        let poststring = "email=\(Username)&password=\(Password)"
        URLRequest.httpBody = poststring.data(using: String.Encoding.utf8)
        

        let task = URLSession.shared.dataTask(with: URLRequest as URLRequest){ data,response,error in
            
            if error != nil
            {
                print("error=\(String(describing: error))")
                return
            }
            
            // Print out response string
            let responseString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print("responseString = \(String(describing: responseString))")
            
            
            // Convert server json response to NSDictionary
            do {
                if let convertedJsonIntoDict = try JSONSerialization.jsonObject(with: data!, options: []) as? NSDictionary {
                    
                    // Print out dictionary
                    print(convertedJsonIntoDict)
                    
                    // Get value by key
                    let firstNameValue = convertedJsonIntoDict["userName"] as? String
                    print(firstNameValue!)
                    
                }
            } catch let error as NSError {
                print(error.localizedDescription)
            }

        }
        task.resume()
        
        
   
        return "BAS"
    }
    
}
    
