//
//  QuestionFeedViewController.swift
//  TheInterviewPrepApp
//
//  Created by Jessica Ly on 11/15/23.
//

import UIKit


class QuestionFeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var addQuestionButton: UIButton!
    
    @IBOutlet weak var qTableView: UITableView!
    
    var questions: [Question] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addQuestionButton.isEnabled = true
        addQuestionButton.isHidden = false
        qTableView.dataSource = self
        qTableView.delegate = self
        let initialQuestion = Question(text: "Initial Question")
        questions.append(initialQuestion)
        qTableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return questions.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell", for: indexPath) as! QuestionCell
        // cell.questionTextField.text = questions[indexPath.row].text
        let question = questions[indexPath.row]
           cell.configure(with: question)
           cell.questionTextField.tag = indexPath.row
           cell.questionTextField.addTarget(self, action: #selector(questionTextFieldDidChange(_:)), for: .editingChanged)
           
//        let question = questions[indexPath.row]
//        print("Question text: \(question.text)")
//
//        cell.configure(with: question)
        return cell
    }
    
    @objc func questionTextFieldDidChange(_ textField: UITextField) {
        let index = textField.tag
        questions[index].text = textField.text ?? ""
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 90.0
    }
    
    
    // MARK: - Actions
    
    @IBAction func addQuestionButtonTapped(_ sender: UIButton) {
        let newQuestion = Question(text: "") // You can set an initial text if needed
          questions.append(newQuestion)
          qTableView.reloadData()
      }
    
    // MARK: - Helper Methods
    
    
}
