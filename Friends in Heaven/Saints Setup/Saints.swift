//
//  Saints.swift
//  Friends in Heaven
//
//  Created by Michael Ghebranious on 2/27/24.
//

import Foundation

enum Initial: String {
    case st = "St."
    case archangel = "Archangel"
    case angel = "Angel"
    case pope = "Pope"
    case fr = "Fr."
    case bishop = "Bishop"
}

struct Saints{
    let name : String
    let longStory : String
    let shortStory : String
    let initial : Initial
}

///Collection of the easier saints that most kids might already know
var easySaints : [Saints] = [


]

///Collection of the medium level saints that some kids might already know
var mediumSaints : [Saints] = [


]

///Collection of the hard level saints that no kids should already know
var hardSaints : [Saints] = [


]
