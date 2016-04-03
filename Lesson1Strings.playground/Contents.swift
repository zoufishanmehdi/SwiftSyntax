//: # Strings

import Cocoa
import Foundation


//: ## Defining Strings using string literals

let myFirstString = "mo 💩"
                    //Cmmd + Ctrl + Space -> emoji popup
let mySecondString = "mo problems"


//: ## String concatenation

let theTruth = myFirstString + "," + mySecondString


//: ## Emoji characters

let similarTruth = "💰 can't buy me 💖"



//: ## String interpolation

//: ### Plain string 

var doggyDiet = "Lulu eats 251labs of dog food per month"


//: ### String with variables

var dogName = "Ferris"
doggyDiet = "\(dogName) eats 25lbs of dog food per month"


//: ### String with variables and expression

var lbsPerDay = 0.75
var daysPerMonth:Double = 30.0
doggyDiet = "\(dogName) eats \(lbsPerDay * daysPerMonth)lbs of dog food per month"

lbsPerDay = 0.25
dogName = "Lil Frankie"
doggyDiet =  "\(dogName) eats \(lbsPerDay * daysPerMonth)lbs of dog food per month"



//: ## More String

//: ### A String is an Array of Characters 
var password = "Meet me in St. Louis"
for character in password.characters {
    if character == "e" {
        print("found an e!")
    } else {
        print("not found")
    }
}

//: ## A String can be treated as an NSString

let newPassword = password.stringByReplacingOccurrencesOfString("e", withString: "3")









