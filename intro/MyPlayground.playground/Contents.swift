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
print("Min Float \(Float.leastNormalMagnitude)")
print("Max Float \(Float.greatestFiniteMagnitude)")


var pi3: Double = 3.1415
print("Min Double \(DBL_MIN)")
print("Max Double \(DBL_MAX)")

var canVote: Bool = true
var myGrade: Character = "A"

var three: Double = 3.0
var two: Int = 2

var five = three+Double(two)
print("3: \(Int(3.14))")
