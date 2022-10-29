//
//  Meme.swift
//  learningNewStuff
//
//  Created by Rodrigo Silva Ribeiro on 29/10/22.
//

import Foundation

struct Meme: Codable {
    let id: Int
    let bottomText : String
    let image : String
    let name : String
    let tags : String
    let topText : String
  
    
    enum CodingKeys: String, CodingKey {
        case id = "ID"
        case bottomText 
        case image
        case name
        case tags
        case topText
    }
}
