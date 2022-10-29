//
//  ContentView.swift
//  learningNewStuff
//
//  Created by Rodrigo Silva Ribeiro on 29/10/22.
//

import SwiftUI
import Darwin
struct memesStruct:Identifiable {
    let id = UUID()
    public var meme: Meme
}

struct ContentView: View {
    let viewModel = MemeViewModel()
    private var memes:[memesStruct] = [memesStruct(meme: Meme(id: 1, bottomText: "a", image: "a", name: "a", tags: "a", topText: "a"))]
    var body: some View {
       
        List(memes){ meme in
            Text(meme.meme.name)
        }
        .onAppear(){
            Task{
                await viewModel.executeGetTopMemes()
            }
        }
        .refreshable {
             await viewModel.executeGetTopMemes()
           }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
