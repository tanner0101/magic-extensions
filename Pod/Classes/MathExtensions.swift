//
//  MathExtensions.swift
//  Pods
//
//  Created by Tanner Nelson on 9/16/15.
//
//

//to the power of operator
infix operator ^^ { }
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}