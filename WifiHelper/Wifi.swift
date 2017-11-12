//
//  Wifi.swift
//  WifiHelper
//
//  Created by Nemanja Vlahovic on 11/12/17.
//  Copyright © 2017 Nemanja Vlahovic. All rights reserved.
//

import Cocoa
import CoreWLAN
import SSKeychain

enum Service: String {
    case None
    case AirPort
}

class Wifi {
    var network: String!
    var password: String {
        get {
            if (CWWiFiClient.shared().interface()?.security() == .none) {
                return Service.None.rawValue
            }
            return SSKeychain.password(forService: Service.AirPort.rawValue, account: network)
        }
    }
    
    init() {
        network = CWWiFiClient.shared().interface()?.ssid()
    }
    
}
