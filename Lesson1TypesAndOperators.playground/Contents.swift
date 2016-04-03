//: Playground - noun: a place where people can play

//import Cocoa
import Foundation


class LightSwitch {
    var on: Bool = true
}

var livingRoomSwitch = LightSwitch()
livingRoomSwitch.on



//: Example 2: Strings and Characters

var dollarSign: Character = "$"
var myFirstSwiftString: String = "mo' money"
var mySecondSwiftString: String = "mo' problems"
var concatenatedString: String = myFirstSwiftString + "," + mySecondSwiftString




//: Comparison Operators 

let ticketPrice = 7.5
let allowance = 10.0
var iceCreamPrice = 3.0


if allowance >= ticketPrice + iceCreamPrice {
    print("Let's go to the movies!")
} else {
    print("Let's watch a movie at home and eat ice cream")
}



//: Ternary Conditional

var hungry = true
var thereIsPie = true

//if hungry {
//    print("Let's eat!")
//} else {
//    print("Let's wait")
//}

//Could be rewritten as..
hungry ? print("Let's eat!") : print("Let's wait.")



//This statement...
//if hungry || thereIsPie {
//    print("Let's eat!")
//} else {
//    print("Let's wait.")
//}

//Coud be rewritten as..
hungry || thereIsPie ? print("Let's eat!") : print("Let's wait.")


//Ternary statements can also be used as expressions
let sandwichPrice = 5.0
var tax = true
var lunchPrice = sandwichPrice + (tax ? 0.50 : 0)






