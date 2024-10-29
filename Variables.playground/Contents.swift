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


//Reference types
let oldArray = NSMutableArray(
array: [
    "Foo",
    "Bar"
]
)

oldArray.add("Baz")
var newArray = oldArray
newArray.add("Qux")
oldArray
newArray

let someNames = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)

func changeTheArray(_ array: NSArray) {
    let copy = array as! NSMutableArray
    copy.add("Bazz")
}

changeTheArray(someNames)
someNames
