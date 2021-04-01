//
//  ApiService.swift
//  SwinjectExample
//
//  Created by Cevat Balaban on 1.04.2021.
//

import Foundation

class ApiService{
    
    private var contentType: String?
    private var domain: String?
    private var token: Token?
    
    private init(){
        
    }
    
    init(contentType: String, domain: String, token: Token){
        self.contentType = contentType
        self.domain = domain
        self.token = token
    }
    
    func getAllWorkerData(): [String]{
        return ["worker1", "worker2", "worker3"]
    }
}
