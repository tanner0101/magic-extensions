import Foundation

infix operator ^^ { }
///'To the power of' operator
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}