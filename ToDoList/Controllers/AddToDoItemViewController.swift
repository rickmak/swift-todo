//
//  AddToDoItemViewController.swift
//  ToDoList
//
//  Created by Peter Cheng on 26/4/2018.
//  Copyright © 2018 d. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func save(_ sender: Any) {
        if let taskName = textField.text, !taskName.isEmpty {
            TodoList.shared.addTask(taskName)
            dismiss(animated: true, completion: nil)
        }
    }
}
