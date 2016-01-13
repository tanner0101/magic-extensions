import CoreBluetooth

extension CBCentralManager {
    
    ///String version of the CBCentralManagerState enum
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
    
    ///String version of the CBCentralManagerState enum
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