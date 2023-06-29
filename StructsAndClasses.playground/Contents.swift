import UIKit

var greeting = "Hello, playground"


//OOPS-
//1.Abstraction
//2.Encapsulation
//3.Polymorphisim
//4.Inheritance


class Person{
   private var name:String
   private var age:Int
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
        print(("Person name is- \(name) And age is \(self.age)"))
    }
    
    func walk(){
        print("Person named \(name) is walking")
    }
    
    func eating(){
        print("Person named \(name) is eating")
        age = 50
    }
    
    func doSomeWork(){
        print("doing Some work")
    }
    
    func updatePersonsName(age:Int, name:String){
        self.age = age
        self.name =  name
        print("\(name)s updated age is \(self.age)")
    }
    
    func isJohnEmployeed() -> Int  {
        return age
    }
    
    func updateName(updatedName:String) -> String{
        self.name = updatedName
        let isJohnWorking = isJohnEmployeed()
        print(isJohnWorking)
        return "My name is \(self.name)"
    }
    
}

//let p1 =  Person(name: "John", age: 22)
//p1.walk()
//p1.eating()
//p1.updatePersonsName(age: 25, name: "Paul")
////let employement =  p1.isJohnEmployeed()
////print(employement)
//
//let result = p1.updateName(updatedName: "Mike")
//print(result)
//
//let p2 =  Person(name: "Rob", age: 30)
//p2.eating()


class Employee:Person{
    
}

let e1 = Employee(name: "Sam", age: 18)
e1.walk()


struct Student{
     var name:String
     var age:Int
    
    
    func studying(){
        print("Person named \(name) is studying")
    }
}

var s1 = Student(name: "Mark", age: 15)
s1.studying()



//Tuples
// It is lightweight data type that allow you group multliple values together

let myTuple = (1,"ABC", true)
print(myTuple.0)
print(myTuple.1)
print(myTuple.2)

func doSqauareOfNum(num:Int) -> (Int, String){
    let square = num * num
    return (square, "result")
}
let res = doSqauareOfNum(num: 2)
print(res)
print(res.0)
print(res.1)
