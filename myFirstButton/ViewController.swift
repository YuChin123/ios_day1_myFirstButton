//
//  ViewController.swift
//  myFirstButton
//
//  Created by Cyberjaya 4 iTrain on 13/11/2017.
//  Copyright © 2017 ada_yc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var myLabel: UILabel!
    
    @IBOutlet var txt_username: UITextField!
    
    @IBOutlet var txt_password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeLabelText(_ sender: Any) {
    print ("Clicking on the button")
    
    print("Username is \(txt_username.text!)")
    
    print("Username is \(txt_password.text!)")
        
        myLabel.text="hello " + txt_username.text!
        
        //Hide all keyboard
        self.view.endEditing(true)

        if self.txt_password.text == "12345" {
            
            //alert message box
            let myAlert = UIAlertController (title: "Successful login", message: "welcome! \(self.txt_username.text!)", preferredStyle: .alert)
            
            
            ////
            //add a button to this alert message box
            
            let myAlertButton = UIAlertAction(title: "okay", style: .default, handler: nil)
            
            //Add this button to message box.
            
            myAlert.addAction(myAlertButton)
            ////////
            
            
            //Pop this Message box to user
            present(myAlert, animated: true, completion: nil)
            
            
        }
        
        else
        {
            ///alert message box
            let myAlert = UIAlertController (title: "Failed to login", message: "abcd", preferredStyle: .alert)
            
            
            ////
            //add a button to this alert message box
            
            let myAlertButton = UIAlertAction(title: "try it again", style: .default, handler: nil)
            
            //Add this button to message box.
            
            myAlert.addAction(myAlertButton)
            ////////
            
            
            //Pop this Message box to user
            present(myAlert, animated: true, completion: nil)
            
        }
        
}

    @IBAction func multipleOptions(_ sender: Any) {
   let myOptions = UIAlertController(title: "My Options", message: "Select your choice", preferredStyle: .actionSheet)
        
        //Add button
        let myButtonWaze = UIAlertAction(title: "Open with Waze", style: .default, handler: nil)
        myOptions.addAction(myButtonWaze)

        //Add button
        let myButtonGoogle = UIAlertAction(title: "Open with Google Map", style: .default, handler: nil)
        myOptions.addAction(myButtonGoogle)
        
        //Add Button.
        let myButtonCancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        myOptions.addAction(myButtonCancel)
        
        //Pop out to user.
        present(myOptions, animated: true, completion: nil)
        
        

    }
    
    
    //came from the text field delegate method
    //whenever user click on the Return key
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //this will hide the selected keyboard
        return textField.resignFirstResponder()
        
        
    }
    
}
