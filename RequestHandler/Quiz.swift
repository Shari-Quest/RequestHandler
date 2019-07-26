//
//  Quiz.swift
//  RequestHandler
//
//  Created by Sharvari H V on 7/25/19.
//  Copyright © 2019 Sharvari H V. All rights reserved.
//

import Foundation

struct Welcome: Codable {
    let quiz: Quiz
}

struct Quiz: Codable {
    let sport: Sport
    let maths: Maths
}

// MARK: - Maths
struct Maths: Codable {
    let q1, q2: Q1
}

// MARK: - Q1
struct Q1: Codable {
    let question: String
    let options: [String]
    let answer: String
}

// MARK: - Sport
struct Sport: Codable {
    let q1: Q1
}
