//
//  MainViewController.swift
//  TodoList
//
//  Created by Thomas Liu on 2017/1/17.
//  Copyright © 2017年 ThomasLiu. All rights reserved.
//

import UIKit
import AudioToolbox

class MainViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.delegate = self;
        tableview.dataSource = self
        connectnib()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func wenggggg(_ sender: UIBarButtonItem) {
        //AudioServicesPlayAlertSound(kSystemSoundID_Vibrate)
    }
    
    
    var shoppingList: [String] = ["Eggs", "Milk","Eggs", "Milk","Eggs", "Milk","Eggs", "Milk","Eggs", "Milk"]
    
    
    @IBOutlet weak var tableview: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "normalcell", for: indexPath) as! NormalTableViewCell
        if shoppingList[indexPath.row] == "Eggs" {
            cell.background.backgroundColor = #colorLiteral(red: 1, green: 0.5859789252, blue: 0, alpha: 1)
            cell.icon.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }else{
            cell.background.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            cell.icon.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        }
        cell.title.text = "Title".appending(shoppingList[indexPath.row])
        cell.detail.text = "Detile^^^^^^^^"
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func connectnib () {
        tableview.register(UINib(nibName: "NormalTableViewCell", bundle: nil), forCellReuseIdentifier: "normalcell")
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        return UITableViewCellEditingStyle.delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            shoppingList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "删除"
    }
    
}
