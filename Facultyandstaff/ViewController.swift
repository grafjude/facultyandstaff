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
    
    
    var facultyStaff=["Mrs. Maciulewicz", "Mr. O'Hara", "Mrs. Jeffcoat", "Ms. Bell", "Mrs. Thompson", "6", "7", "8" ,"9", "10" ]
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
    
            func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                performSegue(withIdentifier: "teachersDepartment", sender: "facultyStaff")
            }
    
            
    
    
    
    override func didReceiveMemoryWarning()
        {
            super.didReceiveMemoryWarning()
        }


}

