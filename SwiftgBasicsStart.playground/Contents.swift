import UIKit

//var greeting = "Hello, playground"
// - comment

/*- multiline comment
 For iOS development we have 2 languages
 1.Objective C
 2.Swift (php,js)
 
 we have 2 UI frameworks
 1.UIKit
 2.SwiftUI
 */

 print("Hello World")

//Basic Data types in Swift
//let - is used to denote constants
//var - is used to denote varibles


let name:String = "Swift" // String
let iOSVersion:Int = 16 // Int
let average:Double = 10.34 // Double
let sal:Float = 100.25 // Float
let isCorrect = true // Boolean values (true/ false)

//name = "Objective C"


//let age:Bool = 12 // Type safety in swift- we cannot assign a value different to type what we have declared

//Typed Inference
var companyName = 234.234
companyName = 10.11

var num:Double = 44
print(num)

//Optionals- It means that this variable can have value or it will be nil
//
//var marks:Double?
//print(marks)


var myName:String?  // optional variable
myName = "abc"
print("1.\(myName) ")


//Optional Binding- the process of unwrapping the value out of optional variable
//1.nil colessing
print("2 \(myName ?? "xyz")" ) // ??- are called nil colessing operator

//2.  if let
if let newName = myName {
    print(newName)
}
print("end of code")

//3 Guard let
func doTask(){
    guard let someName = myName else{
        print("there is no value to myName variable")
        return
    }
    print(someName)
}

doTask()


//4. Force unwrap
myName = "qweret"
print(myName!)
