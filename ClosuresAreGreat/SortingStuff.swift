//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Jim Campagno on 10/25/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import Foundation


struct ToyBin {
    
    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    mutating func sortShips() {
        self.ships = self.ships.sorted { (first, second) -> Bool in
            var result = false
            if first.name == "Titanic" {
                result = true
            }
            if first.age>second.age {
                result = true
            }
            return result
        }
    }
    
    mutating func sortBooks() {
        self.books = self.books.sorted{ $0.name < $1.name}
    }
    
    mutating func sortBowlingPins() {
        self.bowlingPins = self.bowlingPins.sorted { first , second  in
            return first.color.rawValue < second.color.rawValue
        }
    }
    
    mutating func sortMusicCDs() {
        self.musicCDs = self.musicCDs.sorted(by: { (first, second) -> Bool in
            var result = false
            if first.name == "Dark" {
                result = true
            }
            if first.name < second.name {
                result = true
            }
           return result
        })
    }
    
    mutating func changeColorOfAllPins(to color: Color) {
        
        self.bowlingPins = self.bowlingPins.map{bowlingPin in
            var newBowlingPin = bowlingPin
            newBowlingPin.changeColor(to: color)
            return newBowlingPin
        }
        
    }
}


struct Ship {
    var name: String
    var age: Int
}


struct Book {
    var name: String
    var year: Int
    var author: String
}


struct BowlingPin {
    var name: String
    var film: String
    var color: Color
    
    
    mutating func changeColor(to color: Color){
       self.color = color
    }
}


enum Color: Int {
    case red, organe, yellow, green, blue, indigo, violet
}



struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}
