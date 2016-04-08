//: Playground - noun: a place where people can play

import Cocoa

//: #Functions

//: ## Global Functions


print("I'm a global function!")

//min and max
var initialPrice = 50
var bestOffer = 45
var finalPrice = min(bestOffer, initialPrice)

//abs
var negativeSeven = -7
abs(negativeSeven)

//: ## Methods

//: ## Anatomy of a func

let array = ["A", "13", "B", "5", "87", "t", "41"]

class Arithmetic {
    func sumOfStrings(aBunchOfStrings: [String]) -> Int {
        let array = aBunchOfStrings
        var sum = 0
        for string in array {
            if Int(string) != nil {
                let intToAdd = Int(string)!
                sum += intToAdd
            }
            
        }
        return sum
    }
}

//
