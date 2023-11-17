//
//  editQuestion.swift
//  TheInterviewPrepApp
//
//  Created by Jessica Ly on 11/16/23.
//

import Foundation

protocol EditQuestionDelegate: AnyObject {
    func didEditQuestion(_ editedQuestion: Question, atIndex index: Int)
}
