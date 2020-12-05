//
//  SearchingBank.swift
//  OuviFalar
//
//  Created by Danilo Araújo on 04/12/20.
//

import Foundation
import NaturalLanguage

class SearchingBank: ObservableObject {
    
    @Published var searchItem: Search?
    
    init(){
        
    }
    
    
    
    
}
enum Intent: String{
    case favor
    case contra
    case notícia
    case humor
    case outros
}

class Search: ObservableObject{
    
    var text: String
    
    @Published var intent: String?
    
    @Published var isConcluded = false
    
    @Published var theme: Theme?
    init(text: String){
        self.text = text
    }
    
    func startSearch(){
        print("Started searching")
        do{
            let label = try TweetIntentClassifier(configuration: .init()).prediction(text: self.text)
            print("got label", label.label)
            if let intent = Intent(rawValue: label.label) {
                self.intent = intent.rawValue
            }
        }
        catch{
            print(error)
        }
        
        Timer.scheduledTimer(withTimeInterval: 10, repeats: false){_ in 
            self.isConcluded = true
        }
    }
}

class Theme: ObservableObject{
    
    var name: String
    
    @Published var textsArray: [String] = []
    
    init(name: String){
        
        self.name = name
    }
    
}
