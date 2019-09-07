import UIKit

//var str = "Hello, playground"

//Arithmetic Operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore

let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

//Operator overloading

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna"
let action = fakers + "fake"

let firstHalf = ["John","Paul"]
let secondHalf = ["George","Ringo"]
let beatles = firstHalf + secondHalf

//Compound assignment operators

var score = 95
score -= 5
var quote = "The rain in Spain mainly falls on the "
quote += "Spaniards"

//Comparison Operators
let firstScore2 = 6
let secondScore2 = 4

firstScore2 == secondScore2
firstScore2 != secondScore2

firstScore2 < secondScore2
firstScore2 >= secondScore2

"Taylor" <= "Swift"

//Conditions

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21{
    print("Blackjack!")
}
else if firstCard + secondCard == 2 {
    print("Aces Lucky")
}
else{
    print("Regular Cards")
}

var actualWage: Int = 22_000
var medianWage: Double = 22_000
//if actualWage >= medianWage {
//    print("Success")
//}

//var cupsOfCoffee = "4"
//if cupsOfCoffee >= 3 {
//    print("Success")
//} else {
//    print("Failure")
//}

//Combining Condiitons

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18{
    print("One of them is over 18")
}

//Ternary Operator

print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

//this is the same as

if firstCard == secondCard {
    print("Cards are the same")
}
else{
    print("Cards are different")
}
//Switch Statements



enum myWeather {
    case sunny, rain, snow
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

//let weatherToday = "sunny"

let weatherToday = myWeather.sunny

//switch weather {
//case "rain":
//    print("Bring an umbrella")
//case "snow":
//    print("Wrap up warm")
//case "sunny":
//    print("Wear sunscreen")
//    fallthrough
//default:
//    print("enjoy your day")
//}

switch weatherToday {
case .rain:
    print("Bring an umbrella")
case .snow:
    print("Wrap up warm")
case .sunny:
    print("Wear sunscreen")
    fallthrough
default:
    print("enjoy your day")
}

//Rabnge Operators


let myScore = 85
switch myScore{
case 0..<50:
    print("You failed badly")
case 50..<85:
    print("You did OK.")
default:
    print("You did great")
}

let numberOfCats = 1
switch numberOfCats {
case 0:
    print("You have no cats")
case 1...3:
    print("You have some cats")
case 4..<10:
    print("You have many cats!")
}
