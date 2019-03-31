//
//  ChildViewController.swift
//  Nurture2
//
//  Created by Russell King on 29/3/19.
//  Copyright © 2019 Nurture2.App. All rights reserved.
//

import UIKit
import Firebase




class ChildViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    @IBOutlet weak var nameofChildText: UITextField!
    
    @IBOutlet weak var childDOBSelector: UIDatePicker!
    
    @IBOutlet weak var topicSelector: UIPickerView!
    
    var topicSelectorData: [String] = [String]()
    var topicSelected: String = ""
        
    
    
    @IBAction func addAnotherChildButton(_ sender: Any) {
        // save data to firestore.
        
        //clear fields on screen.
        
    }
    
    @IBAction func proceedButton(_ sender: Any) {
        // save data to firestore.
        SaveChildDataToFireStore()
        
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
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        topicSelected = topicSelectorData[row]
    }
    
    func SaveChildDataToFireStore() {
        let db = Firestore.firestore()
        db.collection(userEmail).document("Child" + nameofChildText.text!).setData([
            "name": nameofChildText.text!,
            "DOB": childDOBSelector.date,
            "category": topicSelected
        ]) { err in
            if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
            }
        }
    }
    
    
}

