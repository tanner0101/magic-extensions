/**
    CoreBluetoothExtensions.swift
    
    Easily identify which state a CBCentralManager or CBPeripheralManager is in
    
    <https://gist.github.com/tannernelson/f6ba585244afa80b06d2>
*/

import CoreBluetooth

extension CBCentralManager {
    var stateString: String {
        get {
            switch (self.state) {
            case .PoweredOn:
                return "Powered On"
            case .PoweredOff:
                return "Powered Off"
            case .Resetting:
                return "Resetting"
            case .Unauthorized:
                return "Unauthorized"
            case .Unknown:
                return "Unknown"
            case .Unsupported:
                return "Unsupported"
            }
            
        }
    }
}

extension CBPeripheralManager {
    var stateString: String {
        get {
            switch (self.state) {
            case .PoweredOn:
                return "Powered On"
            case .PoweredOff:
                return "Powered Off"
            case .Resetting:
                return "Resetting"
            case .Unauthorized:
                return "Unauthorized"
            case .Unknown:
                return "Unknown"
            case .Unsupported:
                return "Unsupported"
            }
            
        }
    }
}