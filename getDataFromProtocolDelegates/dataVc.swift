//
//  dataVc.swift
//  getDataFromProtocolDelegates
//
//  Created by Bhargava on 08/08/20.
//  Copyright © 2020 Bhargava. All rights reserved.
//

import UIKit
protocol TransferDataDelegate {
    func dataSending(dataObject:[String:String])
}
class dataVc: UIViewController {
    var Delegate:TransferDataDelegate!
    @IBOutlet weak var firstNameField:UITextField!
    @IBOutlet weak var lastNameField:UITextField!
    @IBOutlet weak var mobileNoField:UITextField!
    @IBOutlet weak var cityField:UITextField!
    @IBOutlet weak var villageField:UITextField!
    @IBOutlet weak var stateField:UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func saveData(_ sender:UIButton){
        if firstNameField.text == "" || lastNameField.text == "" || mobileNoField.text == "" || cityField.text == "" || villageField.text == "" || stateField.text == "" {
            alertVontrol(title: "Field is Empty", message: "Fill All Fields ")
        } else{
            let dataDict:[String:String] = ["fName":firstNameField.text ?? "","lname":lastNameField.text ?? "","mNo":mobileNoField.text ?? "","city":cityField.text ?? "","village":villageField.text ?? "","state":stateField.text ?? ""]
            Delegate.dataSending(dataObject: dataDict ?? ["":""])
        }
        
    }


}
extension UIViewController{
    
    func alertVontrol(title : String,message : String){
       
        let alertControl = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let cancel = UIAlertAction.init(title: "OK", style: .cancel) { (cancel) in
            
        }
        self.present(alertControl, animated: true, completion: nil)
        alertControl.addAction(cancel)
    }
    
    
}
