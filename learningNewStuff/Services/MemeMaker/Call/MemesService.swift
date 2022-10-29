//
//  MemesService.swift
//  learningNewStuff
//
//  Created by Rodrigo Silva Ribeiro on 29/10/22.
//

import Foundation

protocol MemeMakerServiceable {
    func getTopMemes() async -> Result<Memes, RequestError>
}

struct MemeService: HTTPClient, MemeMakerServiceable {
    func getTopMemes() async -> Result<Memes, RequestError> {
        return await sendRequest(endpoint: MemeMakerEndpoint.getAllMemes, responseModel: Memes.self)
    }
}
