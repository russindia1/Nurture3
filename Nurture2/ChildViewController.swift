//
//  ChildViewController.swift
//  Nurture2
//
//  Created by Russell King on 29/3/19.
//  Copyright © 2019 Nurture2.App. All rights reserved.
//

import UIKit




class ChildViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    @IBOutlet weak var nameofChildText: UITextField!
    
    @IBOutlet weak var childDOBSelector: UIDatePicker!
    
    @IBOutlet weak var topicSelector: UIPickerView!
    
    var topicSelectorData: [String] = [String]()
        
    
    
    @IBAction func addAnotherChildButton(_ sender: Any) {
        // save data to firestore.
        
        //clear fields on screen.
        
    }
    
    @IBAction func proceedButton(_ sender: Any) {
        // save data to firestore.
        
        // Proceed to home page.
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
           topicSelectorData = ["Discipline", "Problem Solving"]
            self.topicSelector.delegate = self
            self.topicSelector.dataSource = self
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return topicSelectorData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return topicSelectorData[row]
    }
}

