//
//  QuestionCell.swift
//  TheInterviewPrepApp
//
//  Created by Jessica Ly on 11/8/23.
//

import UIKit

class QuestionCell: UITableViewCell {
    
    
    @IBOutlet weak var questionTextField: UITextField!
    
    func configure(with question: Question) {
            questionTextField.text = question.text
        }
    func updateQuestionText(with newText: String) {
            questionTextField.text = newText
        }
}
