import Foundation

extension NSData {
    
    ///Converts the `NSData` object to a `UInt8`
    var uint8: UInt8 {
        get {
            var number: UInt8 = 0
            self.getBytes(&number, length: sizeof(UInt8))
            return number
        }
    }
    
    ///Converts the `NSData` object to a `UInt16`
    var uint16: UInt16 {
        get {
            var number: UInt16 = 0
            self.getBytes(&number, length: sizeof(UInt16))
            return number
        }
    }
    
    ///Converts the `NSData` object to a `UInt32`
    var uint32: UInt32 {
        get {
            var number: UInt32 = 0
            self.getBytes(&number, length: sizeof(UInt32))
            return number
        }
    }
    
    ///Converts the `NSData` object to an `NSUUID`
    var uuid: NSUUID? {
        get {
            var bytes = [UInt8](count: self.length, repeatedValue: 0)
            self.getBytes(&bytes, length: self.length * sizeof(UInt8))
            return NSUUID(UUIDBytes: bytes)
        }
    }
    
    ///Converts the `NSData` object to a `String`
    var string: String {
        get {
            if let string = NSString(data: self, encoding: NSUTF8StringEncoding) {
                return string as String
            } else {
                return ""
            }
        }
    }
    
}

extension Int {
    
    //Converts the `Int` to an `NSData` object
    var data: NSData {
        var int = self
        return NSData(bytes: &int, length: sizeof(Int))
    }
    
}

extension UInt8 {
    
    //Converts the `UInt8` to an `NSData` object
    var data: NSData {
        var int = self
        return NSData(bytes: &int, length: sizeof(UInt8))
    }
    
}

extension UInt16 {
    
    //Converts the `UInt16` to an `NSData` object
    var data: NSData {
        var int = self
        return NSData(bytes: &int, length: sizeof(UInt16))
    }
    
}

extension UInt32 {
    
    //Converts the `UInt32` to an `NSData` object
    var data: NSData {
        var int = self
        return NSData(bytes: &int, length: sizeof(UInt32))
    }
    
}

extension NSUUID {
    
    //Converts the `NSUUID` to an `NSData` object
    var data: NSData {
        var uuid = [UInt8](count: 16, repeatedValue: 0)
        self.getUUIDBytes(&uuid)
        return NSData(bytes: &uuid, length: 16)
    }
    
}

extension String {
    
    //Converts the `String` to an `NSData` object
    var data: NSData {
        if let data = self.dataUsingEncoding(NSUTF8StringEncoding) {
            return data
        } else {
            return NSData()
        }
    }
}

extension NSString {
    
    //Converts the `NSString` to an `NSData` object
    var data: NSData {
        if let data = self.dataUsingEncoding(NSUTF8StringEncoding) {
            return data
        } else {
            return NSData()
        }
    }
}
