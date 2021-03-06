//: Playground - noun: a place where people can play

import Cocoa
import Darwin
var str = "Hello, playground"

var hello = "Hello "
var world: String = "World"
var msg = hello + world
print("Hello \(world)")
let pi = 3.1416
var myAge: Int = 20
print("Min Int \(Int64.min)")
print("Max Int \(Int64.max)")

var pi2: Float = 3.1415



var pi3: Double = 3.1415

var canVote: Bool = true
var myGrade: Character = "A"

var three: Double = 3.0
var two: Int = 2

var five = three+Double(two)
print("3: \(Int(3.14))")

//conditionals

var age: Int = 8
if age < 5 {
    print("less than 5")
} else if age == 5{
    print("equals 5")
} else if (age > 5) && (age<=18){
    var grade: Int = age-5
    print("Go to grade \(grade)")
} else {
    print("go to college")
}

var income: Double = 12000
var gpa: Double = 3.7

print("get grand: \((income<15000)||(gpa>=3.8)) ")

print("Not TRUE: \(!true)")


var canDrive: Bool = age >= 16 ? true : false

let ingredient = "pasta"

switch ingredient {
case "tomatoes","pasta":
    print("spaguetti")
case "beans":
    print("burrito")
case "potetoes":
    print("mashed potatoes")
default:
    print("water")
}

let score: Int = 100
switch score {
case 93...100:
    print("a")
default:
    print("f")
}

print(5/4)
print(5/4.0)
//+= -= and so on works but ++ do not.


//t:tab, n:new line 
var randStr = "This is a random string"
var randStr2 = " and here is another here"
var randStr3 = randStr + randStr2
print("lenght : \(randStr3.characters.count)")
print("first : \(randStr3[randStr3.startIndex])")
let index5 = randStr3.index(randStr3.startIndex, offsetBy: 5)
print("5th : \(randStr3[index5])")

print("Empty: \(randStr.isEmpty)")
//let ind = randStr2.index(randStr2.startIndex, offsetBy: 2)
//randStr2.insert("A", at: randStr2.index(randStr2.startIndex, offsetBy: 6))

randStr2.insert(contentsOf: " string ".characters, at:
    randStr2.index(randStr2.startIndex, offsetBy: 2))

let startIndex = randStr2.index(randStr2.startIndex, offsetBy: 2)
let endIndex = randStr2.index(randStr2.startIndex, offsetBy:11)
let stringRange = startIndex ..< endIndex
let subStr = randStr2.substring(with: stringRange)

if let hereMatch = randStr2.range(of: "here"){
    randStr2.replaceSubrange(hereMatch, with: "there")
}

//arrays

var array1  = [Int]()
print("empty: \(array1.isEmpty)")

array1.append(7)
print(array1)
array1 += [1,2,3,4,5,6]
print("Index 1: \(array1[1])")

array1[0] = 4
array1.insert(10, at: 3)
print(array1)
array1.remove(at: 3)
print(array1)
array1[0...3] = [1,2,3,4]
print(array1)

print("Items length: \(array1.count)")

var array2 = Array(repeating: 0, count: 5)

var array3 = array1 + array2
for i in array3 {
    print(i)
}

for (i,value) in array3.enumerated() {
    print("\(i) ; \(value)")
}
var array4 = [1,2,3]
for i in array4 {
    print(i)
}
print()
for i in 1...5 {
    print(i)
}
print()
for i in 1...10 where i%2 == 0 {
    print(i)
}

var i: Int = 1
while i < 10 {
    if i % 2 == 0 {
        i += 1
        continue
    }
    if i == 7 {
        break
    }
    print(i)
    i += 1
}

var st: String = "hola"








































