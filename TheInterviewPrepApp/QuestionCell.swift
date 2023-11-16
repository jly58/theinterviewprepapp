//
//  QuestionCell.swift
//  TheInterviewPrepApp
//
//  Created by Jessica Ly on 11/8/23.
//

import UIKit

class QuestionCell: UITableViewCell {
    @IBOutlet weak var questionLabel: UILabel!
    
    
    func configure(with question: Question) {
            questionLabel.text = question.text
        }
}
