//
//  TherapistsPatientsViewController.swift
//  FireBaseDemo
//
//  Created by Jash Garish on 9/21/19.
//  Copyright © 2019 Jash Garish. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
class TherapistsPatientsViewController: UIViewController {
    
    
    @IBOutlet var tableView:UITableView?
    var therapists: [Therapists] = [Therapists]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        let label = UILabel()
        label.text = "Text"
        stackView.addArrangedSubview(label)
//        tableView?.translatesAutoresizingMaskIntoConstraints = false
//        
//        view.addConstraint(NSLayoutConstraint(item: tableView ?? UITableView(), attribute: .top,
//                                              relatedBy: .equal,toItem:view, attribute: .top,multiplier: 1, constant: 0))
//        view.addConstraint(NSLayoutConstraint(item: tableView ?? UITableView(), attribute: .right,
//                                              relatedBy: .equal,toItem:view, attribute: .right,multiplier: 1, constant: 0))
//        view.addConstraint(NSLayoutConstraint(item: tableView ?? UITableView(), attribute: .bottom,
//                                              relatedBy: .equal,toItem:view, attribute: .bottom,multiplier: 1, constant: 0))
//        view.addConstraint(NSLayoutConstraint(item: tableView ?? UITableView(), attribute: .left,
//                                              relatedBy: .equal,toItem:view, attribute: .left ,multiplier: 1, constant: 0))
//        tableView?.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
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
