//
//  ViewController.swift
//  GettingAttention
//
//  Created by Administrator on 6/21/18.
//  Copyright © 2018 Administrator. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userOutput: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func doAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Alert Me Button Selected",
                                                message: "I need your attention NOW!",
                                                preferredStyle: UIAlertControllerStyle.alert)
        let defaultAction = UIAlertAction(title: "OK",
                                          style: UIAlertActionStyle.cancel,
                                          handler: nil)
        
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func doMultiButtonAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Alert with Buttons Selected",
                                                message:"Options are good for people!",
                                                preferredStyle: UIAlertControllerStyle.alert)
        let nowAction = UIAlertAction(title: "Do Something Now",
                                      style: UIAlertActionStyle.default,
                                      handler: {alert in
                                        self.userOutput.text="Pressed Now"}
        )
        let laterAction = UIAlertAction(title: "Do Something Later",
                                      style: UIAlertActionStyle.default,
                                      handler: {alert in
                                        self.userOutput.text="Pressed Later"}
        )
        let cancelAction = UIAlertAction(title: "Never Do It",
                                         style: UIAlertActionStyle.default,
                                         handler: {alert in
                                            self.userOutput.text="Pressed Never"}
        )
        
        alertController.addAction(nowAction)
        alertController.addAction(laterAction)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func doAlertInput(_ sender: Any) {
        let alertController = UIAlertController(title: "Email Address",
                                                message:"Please enter your email address below:",
                                                preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addTextField(configurationHandler: { (emailField) in
            emailField.text = ""
            emailField.placeholder = "Email:"
            emailField.isSecureTextEntry = true
        })
        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alertController] (_) in
            let emailField = alertController?.textFields![0] // Force unwrapping because we know it exists.
            
            let email = emailField?.text
            self.userOutput.text="Entered:\(email!)"
        }))
        present(alertController, animated: true, completion: nil)
    }
    @IBAction func doActionSheet(_ sender: Any) {
    }
    @IBAction func doSound(_ sender: Any) {
    }
    @IBAction func doAlertSound(_ sender: Any) {
    }
    @IBAction func doVibration(_ sender: Any) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

