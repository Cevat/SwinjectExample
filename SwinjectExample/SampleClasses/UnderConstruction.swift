//
//  UnderConstruction.swift
//  SwinjectExample
//
//  Created by Cevat Balaban on 1.04.2021.
//

import Foundation

class UnderConstruction{

    var workerCount = 0

    func getWorkerCount() -> Int{
        
        let token = Token(isAccessToken: true)
        let service = ApiService(contentType: "application/json",
                                 domain: "www.apiserviceurl.com",
                                 token: token)
        let allWorkerData = service.getAllWorkerData()
        workerCount = allWorkerData.count
        return workerCount
    }
}
