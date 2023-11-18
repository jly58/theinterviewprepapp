//
//  ViewController.swift
//  TheInterviewPrepApp
//
//  Created by Jessica Ly on 11/8/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pitchTextView: UITextView!
    
    let textViewKey = "PitchTextViewText"

        override func viewDidLoad() {
            super.viewDidLoad()

            if let savedText = UserDefaults.standard.string(forKey: textViewKey) {
                pitchTextView.text = savedText
            }

            NotificationCenter.default.addObserver(self, selector: #selector(textViewDidChange(_:)), name: UITextView.textDidChangeNotification, object: pitchTextView)
        }

        @objc func textViewDidChange(_ notification: Notification) {
            if let textView = notification.object as? UITextView {
                UserDefaults.standard.set(textView.text, forKey: textViewKey)
            }
        }

        deinit {
            NotificationCenter.default.removeObserver(self, name: UITextView.textDidChangeNotification, object: pitchTextView)
        }
    }
