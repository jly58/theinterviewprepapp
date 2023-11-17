//
//  DetailViewController.swift
//  TheInterviewPrepApp
//
//  Created by Jessica Ly on 11/15/23.
//
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var answerTextView: UITextView!
    
    var interviewAnswer: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up initial text or any other configurations
        answerTextView.text = interviewAnswer ?? "Type your answer here..."
        answerTextView.delegate = self
    }
    
    // MARK: - Navigation
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        // Save the answer and go back to the previous view controller
        interviewAnswer = answerTextView.text
        navigationController?.popViewController(animated: true)
    }
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

