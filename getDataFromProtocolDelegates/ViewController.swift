//
//  ViewController.swift
//  getDataFromProtocolDelegates
//
//  Created by Bhargava on 08/08/20.
//  Copyright © 2020 Bhargava. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,TransferDataDelegate{

    @IBOutlet weak var firstNameLbl:UILabel!
    @IBOutlet weak var lastNameLbl:UILabel!
    @IBOutlet weak var mobileNoLbl:UILabel!
    @IBOutlet weak var cityLbl:UILabel!
    @IBOutlet weak var villageLbl:UILabel!
    @IBOutlet weak var stateLbl:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    @IBAction func NextScreen(_ sender:UIButton){
        let stBoard = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "dataVc") as! dataVc
        stBoard.Delegate = self
        self.navigationController?.pushViewController(stBoard, animated: true)
    }
    func dataSending(dataObject: [String : String]) {
        
        firstNameLbl.text = dataObject["fName"]
        lastNameLbl.text = dataObject["lname"]
        mobileNoLbl.text = dataObject["mNo"]
        cityLbl.text = dataObject["city"]
        villageLbl.text = dataObject["village"]
        stateLbl.text = dataObject["state"]
       }

}

