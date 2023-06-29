import UIKit

var greeting = "Hello, playground"

//Extension- We can add new behaviour to exsiting types

let num:Int = 5

extension Int{
    func square() -> Int{
        return self * self
    }
    
}
let a = num.square()
print(a)

2.square()

extension String{
    func myOwnPrint() -> String{
        return "myOwnPrint \(self)"
    }
}

let abc = "qwerty"
let result = abc.myOwnPrint()
print(result)

"xyz".myOwnPrint()

class Temprature{
    var celcius: Double = 0
    
    func setTemperature(celcius:Double){
        self.celcius = celcius
        print("celcius = \(celcius)")
    }
    
}
extension Temprature{
    func convertDegreeToFahrenhite(){
        print("Temprature in Degree is \(self.celcius) ")
        var fahrenhite = (self.celcius * 1.8) + 32
        print("Temprature in fahrenhite is \(fahrenhite) ")
    }
}

let t1 = Temprature()
t1.setTemperature(celcius: 25.0)
t1.convertDegreeToFahrenhite()


