//
//  Token.swift
//  SwinjectExample
//
//  Created by Cevat Balaban on 1.04.2021.
//

import Foundation

class Token{
    
    private var isAccessToken: Bool?
    
    private init(){
        
    }
    
    init(isAccessToken: Bool){
        self.isAccessToken = isAccessToken
    }
}
