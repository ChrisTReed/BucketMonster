//
//  AddItemViewController.swift
//  BucketMonster
//
//  Created by Christopher Reed on 2/13/17.
//  Copyright © 2017 Christopher Reed. All rights reserved.
//

import UIKit
import os.log


class AddItemViewController: UIViewController, UINavigationControllerDelegate, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var descTextField: UITextField!
    @IBOutlet weak var latTextField: UITextField!
    @IBOutlet weak var lonTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var bucketItem: BucketItem?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    
    @IBAction func cancelAction(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       super.prepare(for: segue, sender: sender)
        
        // Configure the destination view controller only when the save button is pressed.
        guard let button = sender as? UIBarButtonItem, button === saveButton else {
            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }
         let name = nameTextField.text ?? ""
        
        bucketItem = BucketItem(name: name, date: Date())
        
    }

}
