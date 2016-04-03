//: Playground - noun: a place where people can play

import Cocoa
import Foundation

//: # All about Optionals!

//: ## Nil is disallowed in most Swift types

var x: Int
//x = nil

var c: AnyObject
//c = UIColor.redColor()
    ////c = nil


//: ## 1. A method that cannot return a value

var y: Int
var s1: String
var s2: String

s1 = "123"
s2 = "ABC"

//y = Int(s1)
//y = Int(s2)


//: ## Declaring optionals with Question Marks

//Example 1
var z: Int?
var string: String
string = "123"
z = Int(string)
//z * 2

/*
//Example 2
class AnotherViewController: UIViewController {
    //var anotherButton: UIButton
}
*/



//: ## Unwrapping Optionals with if let
//Example 1: A scenario that could return an optional with a nil value 
var zee: Int?

let strings = ["ABC","123"]
let randomIndex = Int(arc4random() % 2)
let anotherString = strings[randomIndex]

zee = Int(anotherString)


if let initValue = zee {
    initValue * 2
} else {
    "No value"
}


//Example 2: Another example with UIImageView

/*
var imageView = UIImageView()

imageView.image = UIImage(named:"puppy_in_box")
if let image = imageView.image {
    let size = image.size
} else {
    print("This image hasn't been set")
}
imageView.image
*/




//: ## Optional Chaining 
//Example 1
/*
var anotherImageView = UIImageView()
anotherImageView.image = UIImage(named:"puppy_in_box")

var size = anotherImageView.image?.size
size.dynamicType

if let imageSize = anotherImageView.image?.size {
    print("Here's the image size: \(imageSize)")
} else {
    print("This image hasn't been set.")
}

imageView.image
*/

//Example 2

var animal = Animal(name: "Lenny", species: "lemur", tailLength: 12)

//animal = Animal(name: "Gilbert", species: "Gorilla", tailLength: nil )

if let tailLength = animal.tail?.length {
    print("\(animal.name)'s tail is \(tailLength) long")
} else {
    print("\(animal.name) doesn't have a tail.")
}








//: ### Downcasting
class Beverage {
    var category:String
    init (category: String) {
        self.category = category
    }
}

class HotDrink: Beverage {
    var pairing:String
    
    init (category: String, pairing: String) {
        self.pairing = pairing
        super.init(category: category)
    }
}

class ColdDrink: Beverage {
    var vessel:String
    
    init (category: String, vessel: String) {
        self.vessel = vessel
        super.init(category: category)
    }
}

var drinkChoices = [
    HotDrink(category: "coffee", pairing: "biscotti"),
    HotDrink(category: "tea", pairing: "crumpets"),
    ColdDrink(category: "lemonade", vessel: "glass"),
    ColdDrink(category: "beer", vessel: "frosty mug")
]

// Generic drink offer
for beverage in drinkChoices {
    print ("Can I get you a \(beverage.category)")
}
//: Type cast operators: __as?__ and __as!__
// Specific drink offer
for beverage in drinkChoices {
    if let coldDrink = beverage as? ColdDrink {
        print ("Can I offer you a \(coldDrink.vessel) of \(coldDrink.category)?")
    } else if let hotDrink = beverage as? HotDrink {
        print ("Can I get you some \(hotDrink.category) with \(hotDrink.pairing)?")
    }
}
//: ### Downcasting with as!
var coffeeArray: [Beverage] = [
    HotDrink(category: "coffee", pairing: "biscotti"),
    HotDrink(category: "coffee", pairing: "scones"),
    HotDrink(category: "coffee", pairing: "biscotti"),
]

for beverage in coffeeArray {
    let hotDrink = beverage as! HotDrink
    print ("Can I get you some \(hotDrink.category) with \(hotDrink.pairing)?")
}







