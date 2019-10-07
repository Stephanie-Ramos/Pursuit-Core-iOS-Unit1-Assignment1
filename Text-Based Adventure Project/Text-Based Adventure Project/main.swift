//
//  main.swift
//  Text-Based Adventure Project
//
//  Created by Stephanie Ramos on 9/30/19.
//  Copyright © 2019 Stephanie N. Ramos. All rights reserved.
//


// cd ~/Documents/Pursuit-Projects/Unit\ 1/Projects/Pursuit-Core-iOS-Unit1-Assignment1/Text-Based\ Adventure\ Project/Text-Based\ Adventure\ Project

import Foundation

//Command + R -builds and checks for erros
//Command + B -builds and runs the application

print("How many days you will be studying this week?")


var numberOfDays = readLine()

// if numberOfDays is a string, then I want to execute this
if let stringNumberOfDays: String = numberOfDays?.lowercased().trimmingCharacters(in: .whitespacesAndNewlines) {
    print("You have entered \(stringNumberOfDays) day(s).")
} else { // if the string is a nil
    print("You did not provide a number. Please do so.")
}


// strings
let stringStudyCount = stringNumberOfDays // this won't let me initialize my input

repeat {
    switch stringStudyCount {
    case "negative one", "negative two", "negative three", "negative four":
        print("That is an invalid number 🥴. Please reenter.")
    case "zero", "one":
        print("Please speak with your Program Manager, in order, to resolve personal matters for studying 🙇🏽‍♀️.")
        break
    case "two":
        print("You may need to accommodate more days of studying 👩🏽‍💻.")
    case "three", "four", "five":
        print("You may have answered your own questions 👍🏽.")
    case "six", "seven":
        print("You may be capable of problem-solving complex situations with tech ⭐️.")
    default:
        print("There are only 7 days in a week. Please reenter 🙂.")
    }
} while stringStudyCount > "seven" || stringStudyCount < "zero"



if let intNumberOfDays: Int? =
    numberOfDays?.trimmingCharacters(in: .whitespacesAndNewlines) {
    // trims integers
    print("You have entered \(intNumberOfDays!) day(s).")
} else { // if the int is a nil
    print("You did not provide a number. Please do so.")
}


let intStudyCount = intNumberOfDays

// ints
repeat {
    switch intStudyCount {
    case ..<0:
        print("That is an invalid number 🥴. Please reenter.")
    case 0...1:
        print("Please speak with your Program Manager, in order, to resolve personal matters for studying 🙇🏽‍♀️.")
        break
    case 2...3:
        print("You may need to accommodate more days of studying 👩🏽‍💻.")
    case 3..<6:
        print("You may have answered your own questions 👍🏽.")
    case 6...7:
        print("You may be capable of problem-solving complex situations with tech ⭐️.")
    default:
        print("There are only 7 days in a week. Please reenter 🙂.")
    }
} while intStudyCount > 7 || intStudyCount < 0

