import Foundation

let myName = "Victor"
let yourName = "Pedro"


//MUTABLE
var names = [myName, yourName]
names.append("Bar")
names.append("Baz")

//INMUTABLE
let nameInmu = [myName, yourName]

//COPY DATA DONT AFFECT DE ORIGINAL DATA
let moreName = ["Fran", "Santi"]
var copy = moreName
copy.append("VictorG")
moreName
copy
