//
//  Decimal Extension.swift
//  DecimalToStringGuaranteedTwoDecimalPlaces
//
//  Created by Xavier Lian on 5/27/18.
//  Copyright © 2018 XavierLian. All rights reserved.
//

import Foundation

extension Decimal
{
    func toStringGuaranteedTwoDecimalPlaces() -> String
    {
        //Determine if the number is negative, and apply it at the end if necessary
        let possNeg = self < 0 ? "-" : ""
        
        //Take the absolute value of the number and turn it into a string
        let stringVersion = self < 0 ? String(describing: -self) : String(describing: self)

        //Split the string into 2 sections, using the decimal point as the divider
        let split = stringVersion.components(separatedBy: ".")
        switch split.count
        {
        case 0:
            return "0.00"
        case 1:
            return possNeg + split[0] + ".00"
        default:
            //Check that there was only one period
            guard split.count == 2 else {return "NaN"}
            
            //Grab numbers after the decimal point
            var justDecs = split[1]
            
            //Obtain first 2 decimal places as an Int
            justDecs = justDecs.count < 2 ? justDecs + "0" : justDecs   //Guarantee a second dec
            let secInd = justDecs.index(justDecs.startIndex, offsetBy: 1)
            guard let topTwo = Int(justDecs[justDecs.startIndex...secInd]) else {return "NaN"}
 
            //Obtain the third decimal
            justDecs = justDecs.count < 3 ? justDecs + "0" : justDecs  //Guarantee a third dec
            let thirdInd = justDecs.index(justDecs.startIndex, offsetBy: 2)
            guard let thirdDec = Int(justDecs[thirdInd...thirdInd]) else {return "NaN"}
            
            //Grab numbers before the decmial point
            guard let whole = Int(split[0]) else {return "NaN"}
            
            //Finalize the decimal by rounding
            let finalDec = thirdDec > 4 ? topTwo + 1 : topTwo
            
            //Determine if padding is needed
            let trailingZero = finalDec == 0 ? "0" : ""
            let leadingZero = 1 ..< 10 ~= finalDec && trailingZero == "" ? "0" : ""
            
            //Handle
            return finalDec > 99
                ? "\(possNeg)\(whole + 1).00"
                : "\(possNeg)\(whole).\(leadingZero)\(finalDec)\(trailingZero)"
        }
    }
}
