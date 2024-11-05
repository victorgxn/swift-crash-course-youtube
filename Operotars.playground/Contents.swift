import Foundation

let myAge = 22
let yourAge = 20


if myAge > yourAge {
     "I'm older than your"
} else if myAge < yourAge {
    "I'm younger than you"
} else {
    "Oh hey, we are the same age"
}

let myMothersAge = myAge + 30
let doubleMyAge = myAge * 2

 ///1. unary prefix
let foo = !true
///2. unary postfix
let name = Optional("Vandad")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)
///3. binary infix
let result = 1 + 2
let names = "Foo" + " " + "Bar"


let age = 30
let message: String
if age >= 18 {
    message = "You are and adult"
} else {
    message = "You are not yet and adult"
}

message

//Ternario
let message2 = age > 18 ? "Eres mayor de edad" : "Todavia no eres un adulto"


let myName = "Vandad"
let myAge2 = 20
let yourName = "Foo"
let yourAge2 = 19

if myName == "vandad" {
   "Your name is \(myName)"
}

if myName == "Vandad" {
    "Now I guessed it correctly"
} else if myName == "Foo" {
    "Are you Foo?"
} else {
    "Okay I give up"
}

//Tambien existe && y ||
