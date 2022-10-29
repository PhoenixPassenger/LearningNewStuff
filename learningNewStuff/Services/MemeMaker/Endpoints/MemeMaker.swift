//
//  MemeMaker.swift
//  learningNewStuff
//
//  Created by Rodrigo Silva Ribeiro on 29/10/22.
//

import Foundation
enum MemeMakerEndpoint {
    case getAllMemes
}

extension MemeMakerEndpoint: Endpoint {
    var method: RequestMethod {
        switch self {
        case .getAllMemes:
            return .get
        }
    }
    
    var header: [String : String]? {
        switch self {
        case .getAllMemes:
            return [
                "Content-Type": "application/json;charset=utf-8"
            ]
        }
    }
    
    var body: [String : String]? {
        switch self {
        case .getAllMemes:
            return nil
        }
    }
    
    var path: String {
        switch self {
        case .getAllMemes:
            return "/pages:"
        }
    }
}
