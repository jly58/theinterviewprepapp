//
//  QuestionFeedViewController.swift
//  TheInterviewPrepApp
//
//  Created by Jessica Ly on 11/15/23.
//

import UIKit


class QuestionFeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var qTableView: UITableView!

    var questions: [Question] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        let question = questions[indexPath.row]
        print("Question text: \(question.text)")

        cell.configure(with: question)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 90.0
    }
}
