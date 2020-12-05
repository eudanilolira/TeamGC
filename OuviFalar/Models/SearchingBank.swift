//
//  SearchingBank.swift
//  OuviFalar
//
//  Created by Danilo Araújo on 04/12/20.
//

import Foundation

class SearchingBank: ObservableObject {
    
    @Published var searchItems: [Search] = []
    
    init(){
        
    }
}

class Search: ObservableObject{
    
    var text: String
    @Published var type: SearchType
    @Published var isConcluded = false
    @Published var themes: [Theme] = []
    
    init(text: String){
        self.text = text
    }
    
}

class Theme: ObservableObject{
    
    var name: String
    @Published var textsArray: [String] = []
    
    init(name: String){
        self.name = name
    }
    
}
