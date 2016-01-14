import Foundation

extension Int {
    
    ///Creates an `Int` from an arbitrary byte array
    static func fromByteArray(bytes: [UInt8]) -> Int {
        var int = 0
        
        for (offset, byte) in bytes.enumerate() {
            let factor: Double = Double(bytes.count) - (Double(offset) + 1);
            let size: Double = 256
            
            int += Int(byte) * Int(pow(size, factor))
        }
        
        return int
    }
    
}