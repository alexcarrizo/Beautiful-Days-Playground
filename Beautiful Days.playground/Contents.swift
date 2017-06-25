//
//  Beautiful Days.playground
//  Beautiful Days
//
//  Created by Alex Carrizo on 6/24/2017.
//  Copyright © 2017 Alex Carrizo. All rights reserved.
//
import UIKit

let tokenizedInput = "20 23 6"
let tokenArray = tokenizedInput.components(separatedBy: " ")

func testForValidInput(tokenArray: [String]) -> (isValid: Bool, tokens: [Int]?) {
    guard tokenArray.count == 3 else { return (false, nil)}
    
    var tokens = [Int]()
    for token in tokenArray {
        if let tokenInt = Int(token) {
            tokens.append(tokenInt)
        } else {
            return (false, nil)
        }
    }
    return (true, tokens)
}

//////////////////////////////////////////////////////////

let input = testForValidInput(tokenArray: tokenArray)
if input.isValid {
    let i = input.tokens![0]
    let j = input.tokens![1]
    let k = input.tokens![2]
    var numberOfBeautifulDays = 0
    
    for day in i...j {
        numberOfBeautifulDays += abs(day - Int(String("\(day)".reversed()))!) % k == 0 ? 1 : 0
    }
    print(numberOfBeautifulDays)
} else {
    print("Input requires 3 integer parameters")
}
