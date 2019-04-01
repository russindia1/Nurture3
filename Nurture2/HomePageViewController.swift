//
//  HomePageViewController.swift
//  Nurture2
//
//  Created by Russell King on 1/4/19.
//  Copyright © 2019 Nurture2.App. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    var allTips = [[String]]()
    
    var latestTip = ["Bread", "Milk", "Cheese", "Apples", "Oranges"]
    var oldTips = ["Get lost", "Get stuffed", "Shout alot", "Cry your heart out", "This is test data"]
    

  
    
   
    
    var sectionIndex = 0
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var row: Int = 0
        
        if section == 0{
            row = latestTip.count
            
        }
        if section == 1{
            row = oldTips.count
        }
        return(row)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "homeCell")
      
        switch indexPath.section{
            
        case 0:
        cell.textLabel?.text = allTips[0][indexPath.row]
        case 1:
        cell.textLabel?.text = allTips[1][indexPath.row]
        default:
        cell.textLabel?.text = allTips[1][indexPath.row]
        }
        return(cell)
        
        }
    
    
    
    
    
        
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
    
        var headerText: String = ""
        
        if section == 0{
            headerText = "Latest Tip"
        }
        if section == 1{
            headerText = "Previous Tips"
        }
    return(headerText)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
     //   let vw = UIView()
     //   vw.backgroundColor = UIColor.red
        
    //    return vw
    //}

    @IBOutlet weak var logoLabel: UILabel!
    
    @IBOutlet weak var childSegmentSelector: UISegmentedControl!
    
    @IBOutlet weak var topicPicker: UIPickerView!
    
    @IBOutlet weak var homePageTable: UITableView!
    
    
    
   // let cellId = "cellid12345"

 /*   weak var tableView: UITableView!
    
    override func loadView() {
        super.loadView()
        
   
    }*/

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        allTips.append(latestTip)
        allTips.append(oldTips)
        
    //    homePageTable.register(HomePageCell.self, forCellReuseIdentifier: cellId)
        
   //     self.homePageTable.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        
    //    self.homePageTable.dataSource = self as? UITableViewDataSource

        // Do any additional setup after loading the view.
        
        //Set up childSegmentSelector to number of children with names. If only one child, then invisible.
        
        //Set topicPicker to current chosen topic.
        
        //Setup TableView
      
        
        
    }
    
    
    
 /*   func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let sectionName: String
        switch section {
        case 0:
            sectionName = NSLocalizedString("mySectionName", comment: "mySectionName")
        case 1:
            sectionName = NSLocalizedString("myOtherSectionName", comment: "myOtherSectionName")
        // ...
        default:
            sectionName = ""
        }
        return sectionName
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        cell.textLabel?.text = "Second section"
        
        return cell
    } */

    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 

} */

/*class HomePageCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}*/
/*extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        let item = "This is a tip"
        cell.textLabel?.text = item
        return cell
    }*/
}
