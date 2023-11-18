//
//  DetailViewController.swift
//  TheInterviewPrepApp
//
//  Created by Jessica Ly on 11/15/23.
//
import UIKit

class DetailViewController: UIViewController{
    
    
    @IBOutlet weak var ansTextView: UITextView!
    
    var questionIndex: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        if let index = questionIndex,
                
                   let storedAnswer = UserDefaults.standard.string(forKey: "interviewAnswer_\(index)") {
                    ansTextView.text = storedAnswer
                } else {
                    ansTextView.text = "Type your answer here..."
                }

                ansTextView.delegate = self
            }

    
    @IBAction func saveButton(_ sender: Any) {
        print("tapped")
        if let index = questionIndex {
            print("Question Index: \(index)")
            UserDefaults.standard.set(ansTextView.text, forKey: "interviewAnswer_\(index)")
            print("Answer for question at index \(index) saved: \(String(describing: ansTextView.text))")
        } else {
            print("questionIndex is nil")
        }

        ansTextView.resignFirstResponder()
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
// nothing added yet
        }
    }

