//
//  ExpensesViewController.swift
//  Expenses
//
//  Created by Plecas, Ante (MU-Student) on 1/23/20.
//  Copyright © 2020 Plecas, Ante (MU-Student). All rights reserved.
//

import UIKit
import Foundation

class ExpensesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    var expenseArray = [Expense]()
    
    var dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateFormat = "MMM d, yyyy HH:mm"
        
        if let date = dateFormatter.date(from: "June 1, 2018 18:30"){
            expenseArray.append(Expense(title: "Dinner", amount: 32.50, date: date))
        }
        
        if let date = dateFormatter.date(from: "May 30, 2018 12:17"){
            expenseArray.append(Expense(title: "Office Supplies", amount: 59.34, date: date))
        }
        
        if let date = dateFormatter.date(from: "May 30, 2018 11:43"){
            expenseArray.append(Expense(title: "Uber", amount: 16.23, date: date))
        }
        
        if let date = dateFormatter.date(from: "May 29, 2018 8:45"){
            expenseArray.append(Expense(title: "Coffee", amount: 3.95, date: date))
        }
            
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        expenseArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expenseCell", for: indexPath)
        
        if let cell = cell as? ExpenseTableViewCell{
            let expense = expenseArray[indexPath.row]
            
            cell.titleLabel.text = expense.title
            cell.costLabel.text = "$" + String(format: "%.2f", expense.amount)
            cell.dateLabel.text = dateFormatter.string(from: expense.date)
        }
        return cell
    }
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
