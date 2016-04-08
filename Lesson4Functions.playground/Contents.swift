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

// func functionName (parameterName: parameterType) -> returnType {
//        statements to execute
//        return object
//     }


let stringToReverse = "Mutable or Immutable? That is the question"

func reverseString(stringToReverse: String) {
    var reversedString = ""
    for character in stringToReverse.characters {
        reversedString = "\(character)" + reversedString
    }
    print(reversedString)
}




//    func functionName (externalParameterName localParameterName: parameterType) -> returnType {
//        statements to execute
//        return object
//     }

//: Example 1 - firstCharacterOf
func firstCharacterOf(word word: String) -> Character {
    return word[word.startIndex]
}

firstCharacterOf(word: "Mom")


//: Example 2 - placeFirstLetterLast
func placeFirstLetterLast(var myString: String) -> String {
    myString.append(firstCharacterOf(word: myString))
    myString.removeAtIndex(myString.startIndex)
    return myString
}
placeFirstLetterLast("Dad")


//: Example 3 - filterByYear

class MovieArchive {
    func filterByYear(year: Int, movies: Dictionary<String, Int>) -> [String] {
        var filteredArray = [String]()
        for (movie, releaseYear) in movies {
        if year == releaseYear {
            filteredArray.append(movie)
        }
      }
      return filteredArray
   }
}


var aiThemedMovies = ["Metropolis":1927, "2001: A Space Odyssey":1968, "Blade Runner":1982, "War Games" : 1983, "Terminator": 1984, "The Matrix":1999, "A.I.":2001, "Her": 2013, "Ex Machina":2015]

var myArchive = MovieArchive()
myArchive.filterByYear(2013, movies: aiThemedMovies)



