//
//  LangCardView.swift
//  LanguageHistory
//
//  Created by Tyler Schmitz on 4/12/23.
//

import SwiftUI

struct LangCardView: View {
    
    var language:Language
    
    var body: some View {
        
        ZStack{
            ZStack{
                Image(language.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .background(LinearGradient(gradient: Gradient(colors: [.clear,.black.opacity(0.4)]), startPoint: .center, endPoint: .bottom))
                
                Text(language.name)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 280)
                    .padding(.leading, -155)
                    .shadow(color: .black.opacity(0.3), radius: 2, x:0, y:3)
            }
            .cornerRadius(50)
            
            
        }
    }
}

struct LangCardView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = LanguageModel()
        
        LangCardView(language: model.languages[0])
    }
}
