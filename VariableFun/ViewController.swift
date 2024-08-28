//
//  ViewController.swift
//  VariableFun
//
//  Created by JUSTIN WEBER on 8/26/24.
//

import UIKit
// steps to get return key for keyboard dismissal
// 1) add a delegate
// 2) attach to textfield
// 3) write textFieldShouldReturn function

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textFieldOutlet: UITextField!
    let pony = 6 // constant declared and initialized(type inference)
    var dog = 7.5 // declare and initialize a variable
    var cat: Int? // declaring an optional
    var ant: Double! // declaring a non-optional
    var potato: String = ""
    var git = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textFieldOutlet.delegate = self
        
        print(Double(pony) + dog)
        
        //print(cat! + 5)
        
        if let blah = cat{
            print(blah + 5);
            print("cat is " + String(blah))
            print("cat is \(blah)") // string interpolation
        }
        else{
            print("failure")
        }
    }
    @IBAction func buttonAction(_ sender: UIButton) {
        var input = textFieldOutlet.text!
        var frog = Int(input) ?? 0
        print(frog + 5)
        textFieldOutlet.resignFirstResponder()
    }
    
    // function called when user hits return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldOutlet.resignFirstResponder()
    }
}

