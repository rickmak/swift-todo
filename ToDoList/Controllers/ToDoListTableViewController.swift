//
//  ToDoListTableViewController.swift
//  ToDoList
//
//  Created by d on 26/4/2018.
//  Copyright © 2018 d. All rights reserved.
//

import UIKit

class ToDoListTableViewController: UITableViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TodoList.shared.items.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListPrototypeCell", for: indexPath)
        let item = TodoList.shared.items[indexPath.row]
        cell.textLabel?.text = item.taskName
        return cell
    }

    // MARK: - Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        // the finished item
        let finishedItem = TodoList.shared.items[indexPath.row]

        // remove from active
        TodoList.shared.items.remove(at: indexPath.row)
        // add to finished
        TodoList.shared.finishedItems.append(finishedItem)

        tableView.deleteRows(at: [indexPath], with: .right)
        TodoList.shared.save()
    }
}
