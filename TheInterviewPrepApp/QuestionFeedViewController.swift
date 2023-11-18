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
    
    @IBOutlet weak var SaveQuestionButton: UIButton!
    
    var questions: [QuestionCodable] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addQuestionButton.isEnabled = true
        addQuestionButton.isHidden = false
        qTableView.dataSource = self
        qTableView.delegate = self
        loadQuestions()
                
        if questions.isEmpty {
            let initialQuestion = QuestionCodable(text: "Enter Your Question")
            questions.append(initialQuestion)
        }
                
        // let initialQuestion = Question(text: "Enter Your Question")
        // questions.append(initialQuestion)
        qTableView.reloadData()
    }
    
    func loadQuestions() {
            if let savedQuestions = UserDefaults.standard.object(forKey: "questions") as? Data {
                let decoder = JSONDecoder()
                if let loadedQuestions = try? decoder.decode([QuestionCodable].self, from: savedQuestions) {
                    questions = loadedQuestions
                }
            }
        }
    
    func saveQuestions() {
        let encoder = JSONEncoder()
        if let encoded = try? encoder.encode(questions) {
            UserDefaults.standard.set(encoded, forKey: "questions")
        }
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
    
    
    @IBAction func saveQuestionTapped(_ sender: UIButton) {
        saveQuestions()
    }
    
    
    @IBAction func addQuestionButtonTapped(_ sender: UIButton) {
        let newQuestion = QuestionCodable(text: "") // Use the appropriate initializer
          questions.append(newQuestion)
          qTableView.reloadData()
        saveQuestions() // Save the questions after modification

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let selectedQuestionIndex = indexPath.row
        performSegue(withIdentifier: "detailSegue", sender: indexPath.row)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailSegue", let selectedQuestionIndex = sender as? Int {
            if let detailViewController = segue.destination as? DetailViewController {
                detailViewController.questionIndex = selectedQuestionIndex
            }
        }
    }
}
    
    

