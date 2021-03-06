//
//  UserExtractWorker.swift
//  BankOfEveris
//
//  Created by Leandro Roberto Medeiros on 12/04/19.
//  Copyright (c) 2019 Leandro Roberto Medeiros. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit
import Alamofire

typealias extractHandler = (_ response: ExtractResponse) -> ()

class UserExtractWorker{
    let url: String = "https://bank-app-test.herokuapp.com/api/statements/"
    
    func getExtractList(extractId: String, responseRequest: @escaping(extractHandler)) {
        Alamofire.request("\(self.url)\(extractId)").responseJSON(completionHandler: { response in
            switch response.result {
            case .success(_):
                do {
                    let extractResponse = try JSONDecoder().decode(ExtractResponse.self, from: response.data!)
                    responseRequest(extractResponse)
                } catch (let error) {
                    print(error)
                }
                
            case .failure(let error):
                print(error)
            }
        })
    }
}
