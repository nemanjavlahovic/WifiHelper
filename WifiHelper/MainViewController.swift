//
//  ViewController.swift
//  WifiHelper
//
//  Created by Nemanja Vlahovic on 11/12/17.
//  Copyright © 2017 Nemanja Vlahovic. All rights reserved.
//

import Cocoa

class MainViewController: NSViewController {

    @IBOutlet weak var wifiLabel: NSTextField!
    @IBOutlet weak var passwordLabel: NSTextField!
    var wifi: Wifi?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showPassword()
    }
    
    func showPassword() {
        if (wifi?.network != Wifi().network) {
            setPassword()
        }
    }
    
    func setPassword() {
        wifi = Wifi()
        
        wifiLabel.stringValue = wifi!.network
        passwordLabel.stringValue = wifi!.password
    }
}
