//
//  DecimalToStringGuaranteedTwoDecimalPlacesTests.swift
//  DecimalToStringGuaranteedTwoDecimalPlacesTests
//
//  Created by Xavier Lian on 5/27/18.
//  Copyright © 2018 XavierLian. All rights reserved.
//

import XCTest
@testable import DecimalToStringGuaranteedTwoDecimalPlaces

class DecimalToStringGuaranteedTwoDecimalPlacesTests: XCTestCase
{
    func testTwoDecimalPlaceGuarantee()
    {
        //What the...
        var testData: [Decimal] = [0, 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9,
                                   1, 1.0, 1.4, 1.5, 1.6, 1.9,
                                   2.01, 2.04, 2.05, 2.06, 2.09,
                                   2.10, 2.40, 2.50, 2.60, 2.90,
                                   2.11, 2.44, 2.55, 2.66, 2.99,
                                   1.990, 1.991, 1.994, 1.995, 1.996, 1.999,
                                   1.890, 1.891, 1.894, 1.895, 1.896, 1.899,
                                   1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        var negs = [Decimal]()
        for ugh in testData
        {
            negs.append(ugh * -1)
        }
        testData.append(contentsOf: negs)
        
        let expected = ["0.00", "0.00", "0.10", "0.20", "0.30", "0.40", "0.50", "0.60", "0.70",
                        "0.80", "0.90",
                        "1.00", "1.00", "1.40", "1.50", "1.60", "1.90",
                        "2.01", "2.04", "2.05", "2.06", "2.09",
                        "2.10", "2.40", "2.50", "2.60", "2.90",
                        "2.11", "2.44", "2.55", "2.66", "2.99",
                        "1.99", "1.99", "1.99", "2.00", "2.00", "2.00",
                        "1.89", "1.89", "1.89", "1.90", "1.90", "1.90",
                        "1.00", "2.00", "3.00", "4.00", "5.00", "6.00", "7.00", "8.00", "9.00",
                        "10.00",
                        "0.00", "0.00", "-0.10", "-0.20", "-0.30", "-0.40", "-0.50", "-0.60",
                        "-0.70", "-0.80", "-0.90",
                        "-1.00", "-1.00", "-1.40", "-1.50", "-1.60", "-1.90",
                        "-2.01", "-2.04", "-2.05", "-2.06", "-2.09",
                        "-2.10", "-2.40", "-2.50", "-2.60", "-2.90",
                        "-2.11", "-2.44", "-2.55", "-2.66", "-2.99",
                        "-1.99", "-1.99", "-1.99", "-2.00", "-2.00", "-2.00",
                        "-1.89", "-1.89", "-1.89", "-1.90", "-1.90", "-1.90",
                        "-1.00", "-2.00", "-3.00", "-4.00", "-5.00", "-6.00", "-7.00", "-8.00",
                        "-9.00", "-10.00"]
        //... heck
        
//        for x in 0 ..< testData.count
//        {
//            print(testData[x], "vs", expected[x])
//        }
        guard testData.count == expected.count else {
            return XCTFail("You're an idiot, your test data is whack")
        }
        for x in 0 ..< testData.count
        {
            XCTAssertEqual(testData[x].toStringGuaranteedTwoDecimalPlaces(), expected[x])
        }
    }
}
