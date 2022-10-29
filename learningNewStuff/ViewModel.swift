//
//  ViewModel.swift
//  learningNewStuff
//
//  Created by Rodrigo Silva Ribeiro on 29/10/22.
//

import Foundation
class MemeViewModel: ObservableObject {
    @Published var memes: [Meme] = []
    @Published var isLoading: Bool = false
    
    @MainActor
    func executeGetTopMemes() async {
        let result = await MemeService().getTopMemes()
        switch result {
        case .success(let response):
            print(response)
            memes = response.data
        case .failure(let error):
            return
        }
    }
}
