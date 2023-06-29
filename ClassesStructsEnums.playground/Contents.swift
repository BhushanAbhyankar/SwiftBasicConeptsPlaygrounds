import UIKit

var greeting = "Hello, playground "

//Array- collection of different data types
var numbersArray:[Int] =  [1,2,3,4,5,6,7,8,9,10,11]
//print(numbersArray.first!)
//print(numbersArray.last!)
print(numbersArray[9])
numbersArray.append(12)
numbersArray.append(13)

for num in numbersArray{
 //   print(num)
}

var stringArray = ["a", "b", "c", "d","e"]
stringArray.append("f")
stringArray.append("g")
for str in stringArray{
   // print(str)
}
var mixArray:[Any] = [1,"swift", 12.3, true]

for str in mixArray{
  //  print(str)
}

//Dictionary - a collection of key value pairs (Hashtable)
let someDictionary: [String: Any] = ["Adam": 1, "Bob": 2, "Chris": 3]
print(someDictionary["Adam"]!)
print(someDictionary["Bob"]!)
print(someDictionary["Chris" ]!)

for names in someDictionary{
    if names.value as! Int == 1{
      //  print(names.key)
    }
}


// Set - set is a collection of Unique unordered data values

var rollNos:Set = [1,2,4,5,6,7,7]
print(rollNos)
//
//rollNos.insert(8)
//print(rollNos)
//
//rollNos.remove(7)
//print(rollNos)

//Enum- Enumeration
// group of similar/related custom data types

enum Direction{
    case left
    case right
    case up
    case down
}
//print(Direction.left)

enum Days:CaseIterable{
    case sunday,monday,tuesday,wed,thur,fri,sat
}
//print(Days.monday)

for day in Days.allCases{
   // print(day)
}

//Types of Enums
//1. RawValue Enum
//2. Associate type Enum

//1. RawValue Enum
enum VehicalBrand:String{
    case mercedes = "Known if high prices"
    case toyota = "Konwn for high quality"
    case honda = "Known for durablity"
    case ford
}
//print(VehicalBrand.mercedes.rawValue)
//print(VehicalBrand.honda.rawValue)
//print(VehicalBrand.ford.rawValue)

enum StudentTypes:Int{
    case a = 99
    case b,c,d,e,x,r
    case t = 300
}
print(StudentTypes.c.rawValue)
print(StudentTypes.r.rawValue)
print(StudentTypes.t.rawValue)

//2. Associate type Enum
enum VehicalPrices{
    case highEnd(price:Int)
    case midEnd(price:Double)
    case lowEnd
    case noType(type:String)
}

func getVehicalPrices(price:VehicalPrices){
    switch price{
    case .highEnd(price: let price):
        if price > 1000000{
            print("Its a highEnd Vehical")
        }
    case .midEnd(price: let price):
        if price < 10000{
            print("Its a midEnd Vehical")
        }
    case .lowEnd:
        print("Its a lowEnd Vehical")
    case .noType(type: let type):
        print("the cars type is \(type)")
    }
}
getVehicalPrices(price: VehicalPrices.highEnd(price: 2376787432))
getVehicalPrices(price: .noType(type: "Tesla"))
getVehicalPrices(price: .noType(type: "hybrid"))
