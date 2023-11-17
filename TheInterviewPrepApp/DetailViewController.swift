//
//  DetailViewController.swift
//  TheInterviewPrepApp
//
//  Created by Jessica Ly on 11/15/23.
//
import UIKit

class DetailViewController: UIViewController{
    
    
    @IBOutlet weak var ansTextView: UITextView!
    
    var interviewAnswer: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let storedAnswer = UserDefaults.standard.string(forKey: "interviewAnswer") {
            interviewAnswer = storedAnswer
        }
        ansTextView.text = interviewAnswer ?? "Type your answer here..."
        ansTextView.delegate = self
        
        
    }
    
    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(ansTextView.text, forKey: "interviewAnswer")
        
        
        navigationController?.popViewController(animated: true)
        
    }
    // MARK: - Navigation
    
    
}
    extension DetailViewController: UITextViewDelegate {
        func textViewDidBeginEditing(_ textView: UITextView) {
            if textView.text == "Type your answer here..." {
                textView.text = ""
            }
        }
        
        func textViewDidEndEditing(_ textView: UITextView) {
            // Save the text when the user finishes editing
            // You can save it to a property, database, or wherever you need
        }
    }

