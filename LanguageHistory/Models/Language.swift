//
//  Language.swift
//  LanguageHistory
//
//  Created by Tyler Schmitz on 4/12/23.
//

import Foundation

class Language: Decodable, Identifiable{
    
    var id:UUID?
    
    var name:String
    var image:String
    var description:String
    var devTypes:[String]
    var objectOriented:Bool
    var strongType:Bool
    
}
