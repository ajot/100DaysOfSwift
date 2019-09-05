import UIKit

//arrays
var str = "Hello, playground"

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john,paul,george,ringo]
beatles[1]

let name: String = "who"

//arrays with type annotations
let emotions: [String] = ["We", "❤", "Swift"]

//Sets

let colors = Set(["red","green","blue"])
colors

let colors2 = Set(["red","green","blue","red","blue"])
//colors2[0]


//Tuples (same as a hash in ruby?)

var myName = (first: "Taylor",last:"Swift",age:30)
myName.first
myName.1
myName.age
myName.age = 35
myName.age
myName
//myName = (first:"Foo",last:"bar",age:35,gender:"m")
myName
type(of: myName)


//Dictionaries

var heights=[
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]
heights["Ed Sheeran"] = 2.5
heights

//if I was to do the same thing using arrays, I would not be able to do that. I would only be able to store the heights.
//if I was to do the same thing using tuples, I would do

var heights2 = (taylorSwift:1.78,edSheeran:1.73)
//or I would do, which won't even work
//var heights3 = ([first:"taylor",last:"swift",height:1.78],[first:"ed",last:"sheeran",height:1.73])
//var heights3 = ("Taylor Swift":1.78,"Ed Sheeran":1.73)
//heights3

//let location = (road: "Park Lane", city: "Cardiff")
let location = (road: "Park Lane", city: "Cardiff")
//let location = ("road": "Park Lane", "city": "Cardiff")
//let location = ["road": "Park Lane", "city": "Cardiff"]
type(of: location)




//Using a dictionary for this use case would definitely be the more cleaner way to go.



//Dictionary default values

let favoriteIceCream = [
    "Paul":"Chocolate",
    "Sophie":"Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Sophie"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte",default:"Unknown"]

//Creating Empty collections

//1. Creating empty dictionary
//we can create an empty dictionary with strings for keys and values like this:
var teams = [String: String]()
teams["Paul"] = "Red"

//2. empty array
var results = [Int]()

//3. empty set
//Swift has special syntax only for dictionaries and arrays; other types must use angle bracket syntax like sets.
var words = Set<String>()
var numbers = Set<Int>()



//If you wanted, you could create arrays and dictionaries with similar syntax:
//So, instead of var teams = [String: String](), you would type
var teams2 = Dictionary<String,String>()

//and instead of var results = [Int](), you would type
var results2 = Array<Int>()

teams2["Paul"] = "Red"
teams2

//Enumerations

enum Result{
    case success
    case failure
}

var result4 = Result.failure


//enum associated values

enum Activity {
    case bored
    case running
    case talking
    case singing
}

var currentStatus = Activity.bored

enum newActivity {
    case bored
    case running(Destination: String)
    case talking(Topic: String)
    case singing(Volume: Int)
}

var newCurrentStatus = newActivity.talking(Topic: "football")


//enum raw values
enum Planet: Int{
    case mercury = 1
    case venus
    case earth
    case mars
}

let earth1 = Planet(rawValue: 3)
let earth2 = Planet.RawValue(3)

enum newResult: Int{
    case success = 0
    case failure = 1
}

var result5 = newResult(rawValue: 1)

enum Airport: String {
    case munich = "MUC"
    case sanFrancisco = "SFO"
    case singapore = "SIN"
}

var cityAirport = Airport.munich
var cityAirport2 = Airport(rawValue: "MUC")



//------------------------------------------------------
//Playground for evaluation questions
//------------------------------------------------------

//let characters: [Int] = ["Doctor Who"]
let planets = [1: "Mercury", 2: "Venus"]
let venus = planets[2, default: "Planet X"]
let venus1 = planets[3, default: "Planet X"]

let capitals = ["England": "London", "Wales": "Cardiff"]
let scotlandCapital = capitals["Scotland"]

let prices = ["Milk": 1, "Pepsi": 2]

let albums = ["Prince": "Purple Rain"]
let beatles2 = albums["Beatles"]

var fibonacci = (1, 1, 2, 3, 5, 8)
fibonacci.0

let ages: [Int] = [26, 28, 39]

let credentials = ["username": "twostraws"]
type(of: credentials)

//What's the difference between associated values and raw values?
//Associated values attach extra data to an enum case; raw values are underlying data types for each case.

//Playing more with Associated values
enum myAirports {
    case munich
    case sanFrancisco
    case singapore
    case london(airportName: String)
}

var myCityAirport = myAirports.london(airportName: "LHR")
myCityAirport

//or we can create another enum for London Airports, so -
enum LondonAirportName {
    case stansted
    case heathrow
    case gatwick
}
enum myAirports2 {
    case munich
    case sanFrancisco
    case singapore
    case london(airportName: LondonAirportName)
}
var myCityAirport2 = myAirports2.london(airportName: .heathrow)
