//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
class Silly {
    let vowels = ["a","e","i","o","u"]
    // join an array of strings into a single template string:
    let bananaFanaTemplate = [
        "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
        "Banana Fana Fo F<SHORT_NAME>",
        "Me My Mo M<SHORT_NAME>",
        "<FULL_NAME>"].joined(separator: "\n")
    func shortNameFromName(name: String) -> String {
        let lower = name.lowercased()
        //let vowelSet = CharacterSet(charactersIn: "aeiou")
        
        return lower
    }
    func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
        // ...
        lyricsTemplate.replacingOccurrences(of: "<FULL_NAME>", with: fullName)
        var short = shortNameFromName(name: fullName)
        lyricsTemplate.replacingOccurrences(of: "SHORT_NAME", with: short)
        return lyricsTemplate
    }
}