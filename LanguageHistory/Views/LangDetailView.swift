//
//  LangDetailView.swift
//  LanguageHistory
//
//  Created by Tyler Schmitz on 4/12/23.
//

import SwiftUI

struct LangDetailView: View {
    
    var language:Language
    
    var body: some View {
        ScrollView{
            
            VStack(alignment: .leading){
                
                // MARK: Image
                Image(language.image)
                    .resizable()
                    .scaledToFit()
                
                VStack(alignment: .leading){
                    
                    // MARK: Description
                    Text("What is " + language.name + "?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.vertical, 3.0)
                    Text(language.description)
                        .padding(.vertical, 3.0)
                    
                    // MARK: Use
                    Text("What is it used for?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.vertical, 3.0)
                    Text(language.name + " is used for " + DataService.combineUses(input: language.devTypes) + " development.")
                    
                    // MARK: Additional Info
                    Text("Additional Info")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.vertical, 3.0)
                    Text("Object Oriented: " + DataService.boolToYN(input: language.objectOriented))
                    Text("Strongly Typed: " + DataService.boolToYN(input: language.strongType))
                    
                    
                }
                .padding(.horizontal)

            }
            
        }.navigationBarTitle(language.name)
    }
    
    
}

struct LangDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = LanguageModel()
        
        LangDetailView(language: model.languages[1])
    }
}
