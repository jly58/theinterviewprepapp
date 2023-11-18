//
//  ViewController.swift
//  TheInterviewPrepApp
//
//  Created by Jessica Ly on 11/8/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var pitchTextField: UITextField!
    
  
    let textFieldKey = "PitchTextFieldText"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the saved text from UserDefaults
        if let savedText = UserDefaults.standard.string(forKey: textFieldKey) {
            pitchTextField.text = savedText
        }
        
  
        NotificationCenter.default.addObserver(self, selector: #selector(textFieldDidChange(_:)), name: UITextField.textDidChangeNotification, object: pitchTextField)
    }
    

    @objc func textFieldDidChange(_ notification: Notification) {
        if let textField = notification.object as? UITextField {
            UserDefaults.standard.set(textField.text, forKey: textFieldKey)
        }
    }
    
    deinit {

        NotificationCenter.default.removeObserver(self, name: UITextField.textDidChangeNotification, object: pitchTextField)
    }
}
