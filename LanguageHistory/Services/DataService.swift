//
//  DataService.swift
//  LanguageHistory
//
//  Created by Tyler Schmitz on 4/12/23.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Language] {
        
        // Parse Local JSON File
        
        // Get a URL path to JSON flie
        let pathString = Bundle.main.path(forResource: "languages", ofType: "json")
        
        guard pathString != nil else{
            return [Language]()
        }
        
        // create a url object
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            // create a data object
            let data = try Data(contentsOf: url)
            
            // decode the data with JSON decoder
            let decoder = JSONDecoder()
            
            do{
                let languageData = try decoder.decode([Language].self, from: data)
                
                // add the unique IDs
                
                for r in languageData {
                    r.id = UUID()
                }
                
                // return the recipes
                
                return languageData
            }
            catch{
                // error decoding
                print(error)
            }
            
        }
        catch {
            // error getting data
            print(error)
        }
        
        return [Language]()
    }
    
    static func combineUses(input:[String]) -> String{
        
        var output = ""
        
        for i in 0..<input.count {
            
            if input.count == 1{
                return input[0]
            }
            if input.count == 2{
                return input[0] + " and " + input[1]
            }
            
            if i+1 == input.count{
                output += ("and " + input[i])
            }
            else{
                output += (input[i] + ", ")
            }
            
        }
        
        return output
        
    }
    
    static func boolToYN(input:Bool) -> String{
        
        if input == true{
            return "Yes"
        }
        return "No"
        
    }
    
}
