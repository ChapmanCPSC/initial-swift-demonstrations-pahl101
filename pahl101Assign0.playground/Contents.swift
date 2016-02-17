//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//This is a comment

/* This is a multi
 line comment */

//everything in swift is an object

//==================================================================================================

//basic function

func helloWorld()
{
    print("Hello World")
}

helloWorld()

//==================================================================================================

//Classes

class Person //class
{
    var name = "" //variables
    var height = 0
    var weight = 0
    let species = "Human"
    
    func printInfo() //function it is a void function since no return type is mentioned
    {
        print("Species: \(species), Name: \(name), Height: \(height)inches, Weight: \(weight)lbs")
    }
}

let p1 = Person() //instantiation of person class
p1.name="Jane Doe"
p1.height=64
p1.weight=140

p1.printInfo() //instantiating person function

let p2 = Person()
p2.name="John Doe"

//==================================================================================================

//external parameters

func greeting(to person: String, from friendPerson: String) ->String
{
    return "Greetings \(person), my name is \(friendPerson)!"
}


print(greeting(to: p1.name, from: p2.name)) //you are calling the person's name in a sentence manner


//==================================================================================================

//default parameters

func greetingAgain(person: String="You")->String
{
    return "Hello \(person)!"
}

print(greetingAgain())
print(greetingAgain("Madison"))


//==================================================================================================

//variadic parameters

func namePrint(names: String...)
{
    print("List includes following names:")
    for name in names
    {
        print(name)
    }
}

namePrint("Josh","Madison","Peyton","Rebecca","Christopher","Cannon")
//note that the print function is also variadic



//==================================================================================================

//inout parameters

func number(inout x: Int)
{
    x=1
}

var x=100
print(x)
number(&x)
print(x)

//==================================================================================================

//functions as values

func complexMath(function: (x: Int, y: Int ) -> Int) -> Int
{
    var result = function(x:6, y:9)
    result += 100
    return result
}

func fn(m: Int, n: Int) -> Int
{
    return m * n
}

print(complexMath(fn))


//==================================================================================================

//anonymous functions

var hello: ()  -> String = {
    return "Hello"
}

print(hello())

//==================================================================================================

//variable declaration

let me = "Madison" // this is constant
var you = "" // this can change

var stringThing : String = "String Thing" //explicit
var aNumber : Float = 3.14 //explicit

var anotherNumber = 49 //implicit
var text = "Whats Up?" //implicit


//==================================================================================================

//enum

enum Animals
{
    case Dog
    case Penguin
    case cat
    case Unicorn
}

let animal1 = Animals.Penguin
var animal2 : Animals

animal2 = .Unicorn

//==================================================================================================

//rand function

let random = rand()
print(random)

//==================================================================================================

//willSet and didSet

class MysticalAnimal
{
    var animal : String = ""{
        willSet{
            print ("The mystical animal is \(newValue)")
        }
        didSet{
            print("You changed the mystical animal from a \(oldValue) to \(self.animal)")
        }
    }
}

var anim = MysticalAnimal()

anim.animal = "Unicorn"
anim.animal = "Dragon"

//==================================================================================================

//string interpolation

let hString = "HELLO"

for letter in hString.characters
{
    print(letter)
}

//==================================================================================================

//range

let range = 1...5

for value in range{
    print(value)
}

//==================================================================================================

//tuple

var person = ("Madison", "Pahl")

var firstName = person.0
var lastName = person.1

print(firstName)
print(lastName)
