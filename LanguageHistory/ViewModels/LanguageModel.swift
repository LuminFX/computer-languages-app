//
//  LanguageModel.swift
//  LanguageHistory
//
//  Created by Tyler Schmitz on 4/12/23.
//

import Foundation

class LanguageModel: ObservableObject {
    
    @Published var languages = [Language]()
    
    init(){
        
        self.languages = DataService.getLocalData()
        
    }
    
}
