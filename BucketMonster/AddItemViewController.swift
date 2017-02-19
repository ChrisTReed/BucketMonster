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
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    var bucketItem: BucketItem?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        descTextField.delegate = self
        
        datePicker.datePickerMode = .date
        
        latTextField.keyboardType = UIKeyboardType.decimalPad
        lonTextField.keyboardType = UIKeyboardType.decimalPad
        
        if let bucketItem = bucketItem {
            navigationItem.title = bucketItem.name
            nameTextField.text = bucketItem.name
            descTextField.text = bucketItem.name
            datePicker.date = bucketItem.date
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    
    @IBAction func cancelAction(_ sender: UIBarButtonItem) {
        let isPresentingInAddMealMode = presentingViewController is UINavigationController
        
        if isPresentingInAddMealMode {
            dismiss(animated: true, completion: nil)
        }
        else if let owningNavigationController = navigationController {
            owningNavigationController.popViewController(animated: true)
        }
        else {
            fatalError("The ViewController is not inside a navigation controller.")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
       super.prepare(for: segue, sender: sender)
        
        // Configure the destination view controller only when the save button is pressed.
        guard let button = sender as? UIBarButtonItem, button === saveButton else {
            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }
        let name = nameTextField.text ?? ""
        let date = datePicker.date
        
        bucketItem = BucketItem(name: name, date: date)
        
    }

}
