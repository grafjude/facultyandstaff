//
//  ViewController.swift
//  Facultyandstaff
//
//  Created by BHSRam8 on 10/6/16.
//  Copyright © 2016 Jude Graf. All rights reserved.
//

import UIKit

class ViewController:
UIViewController, UITableViewDataSource, UITableViewDelegate
{

    @IBOutlet weak var facultystaffTable: UITableView!
    
    
    var facultyStaff=["Teachers"]
    var teachersDepartment=["English", "Math", "Science", "History", "Religion" ]
   
    override func viewDidLoad()
        {
            super.viewDidLoad()
            facultystaffTable.dataSource=self
            facultystaffTable.delegate=self
        }
    
            func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
                {
                    return facultyStaff.count
                }
    
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
                {
                    let cell=UITableViewCell()
        
                    print(indexPath.row)
        
                    cell.textLabel?.text=facultyStaff[indexPath.row]
                    return cell
                }
            func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
                {
                    performSegue(withIdentifier: "teachersDepartment", sender: "Teachers")
                }
    
    
    override func didReceiveMemoryWarning()
        {
            super.didReceiveMemoryWarning()
        }


}

