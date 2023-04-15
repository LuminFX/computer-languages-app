//
//  ContentView.swift
//  LanguageHistory
//
//  Created by Tyler Schmitz on 4/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = LanguageModel()
    
    var body: some View {
        
        NavigationView{
            
            ScrollView{
                
                ForEach(model.languages) { l in
                    
                    NavigationLink {
                        LangDetailView(language: l)
                    } label: {
                        LangCardView(language: l)
                            .padding(.horizontal)
                    }
                    
                }
                
            }.navigationBarTitle("Languages")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
