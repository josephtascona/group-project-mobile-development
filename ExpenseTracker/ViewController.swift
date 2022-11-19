//
//  ViewController.swift
//  ExpenseTracker
//
//  Created by Joseph Tascona on 2022-11-19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var expenseField: UITextField!
    
    @IBOutlet weak var costField: UITextField!
    
    @IBOutlet weak var textbox: UITextView!
    
    var expenses: [String] = []
    var costs: [Double] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addBtn(_ sender: Any) {
        expenses.append(expenseField.text!)
        costs.append(Double(costField.text!)!)
        textbox.text = ""
        for i in 0...(costs.count-1) {
            var formatCost = String(format: "%.2f", costs[i])
            textbox.text += "Expense: " + expenses[i] + " Cost: " + formatCost + "$\n"
        }
        expenseField.text = ""
        costField.text = ""
    }

}

