//
//  Memes.swift
//  learningNewStuff
//
//  Created by Rodrigo Silva Ribeiro on 29/10/22.
//

import Foundation

struct Memes: Codable {
    let code: Int
    let message: Int
    let next: Int
    let data: [Meme]

    enum CodingKeys: String, CodingKey {
        case code
        case message
        case next
        case data
    }
}
