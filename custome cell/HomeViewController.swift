//
//  HomeViewController.swift
//  custome cell
//
//  Created by Owner on 2019-03-14.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return studentArray.count
    }
    
    @IBOutlet weak var tvStudentDetails: UITableView!
      var studentArray: [Student]!

    override func viewDidLoad() {
        super.viewDidLoad()
  loadStudentData()
        self.tvStudentDetails.delegate = self
        self.tvStudentDetails.dataSource = self
       
        // Do any additional setup after loading the view.
    }
    private func loadStudentData()
    {
        studentArray = []
        studentArray.append(Student(Fname: "Pritesh", id: "Patel", gender: "Male", result: "Fail"))
        studentArray.append(Student(Fname: "Priya", id: "Aggarwal", gender: "Female", result: "Pass"))
        studentArray.append(Student(Fname: "Mohammed Ayub", id: "Ali", gender: "Male", result: "Fail"))
        studentArray.append(Student(Fname: "Arturo", id: "Gonzalez Castro", gender: "Male", result: "Pass"))
        studentArray.append(Student(Fname: "Gurvinder", id: "Singh", gender: "Male", result: "Pass"))
        studentArray.append(Student(Fname: "Pritesh", id: "Patel", gender: "Male", result: "Pass"))
        studentArray.append(Student(Fname: "Pritesh", id: "Patel", gender: "Male", result: "Fail"))
        studentArray.append(Student(Fname: "Pritesh", id: "Patel", gender: "Male", result: "Pass"))
        studentArray.append(Student(Fname: "Pritesh", id: "Patel", gender: "Male", result: "Fail"))
        studentArray.append(Student(Fname: "Pritesh", id: "Patel", gender: "Male", result: "Pass"))
        studentArray.append(Student(Fname: "Pritesh", id: "Patel", gender: "Male", result: "Pass"))
        studentArray.append(Student(Fname: "Pritesh", id: "Patel", gender: "Male", result: "Fail"))
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let studentCell = tableView.dequeueReusableCell(withIdentifier: "studentCell") as! StudentDetailsTableViewCell
        
        let student = self.studentArray[indexPath.row]
        
        studentCell.lblStudentFirstName.text = student.Fname
        studentCell.sid.text = student.id
        studentCell.lblStudentFGender.text = student.gender
        studentCell.lblStudentResult.text = student.result
        studentCell.lblStudentResult.textColor = UIColor.green
        if(student.result == "Fail")
        {
            studentCell.lblStudentResult.textColor = UIColor.red
        }
        
        return studentCell
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
