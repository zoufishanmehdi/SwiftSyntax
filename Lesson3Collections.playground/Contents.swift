//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

//Array- ordered list of items
//Dictionary- collection of key-value pairs
//Set- unordered list of distinct values

//: ### Initializing Arrays
//The verbose way
var numbers = Array<Double>()

//More common use
var moreNumbers = [Double]()
moreNumbers = [85.0, 90.0, 95.0]

//Array literal syntax
let differentNumbers = [97.5, 98.5, 99.0]

//Array concatentation 
moreNumbers = moreNumbers + differentNumbers

//An array can hold any type of object
//var circuit = [livingRoomSwitch, kitchenSwitch, bathroomSwitch]

//: ### Array operations: append, insert, remove, count, retrieve
var roadTripMusic = ["Neil Young","Kendrick Lamar","Flo Rida","Nirvana"]
roadTripMusic.append("Rae Sremmurd")
roadTripMusic.insert("Dej Loaf", atIndex: 2)
roadTripMusic.removeAtIndex(3)
roadTripMusic.insert("Keith Urban", atIndex: 3)
roadTripMusic.count

let musician = roadTripMusic[2]

//: ### Dictionary initialization
//Initializer syntax
var groupsDict = [String:String]()

//Dictionary literal
var animalGroupsDict = ["whales":"pod", "geese":"flock", "lions":"pride"]

//Another example 
var averageLifeSpanDict = [String:Range<Int>]()
var lifeSpanDict = ["African Grey Parrot": 50...70, "Tiger Salamander": 12...15, "Bottlenose Dolphin": 20...30]

//: ### Dictionary operations: insert, remove, count, update, retrieve
// Adding items to a dictionary
animalGroupsDict["crows"] = "murder"
animalGroupsDict["monkeys"] = "troop"

//The count method is available to all collections
animalGroupsDict.count
print(animalGroupsDict)

//Removing items from a dictionary
animalGroupsDict["crows"] = nil
animalGroupsDict

//Updating a value
animalGroupsDict["monkeys"] = "barrel"
var group = animalGroupsDict.updateValue("gaggle", forKey: "geese")
group.dynamicType

animalGroupsDict.updateValue("crash", forKey: "rhinoceroses")
print(animalGroupsDict)

//Retrieving the value for a particular key
let groupOfWhales = animalGroupsDict["whales"]

























