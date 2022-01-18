//
//  APIManager.swift
//  TestPodFramework
//
//  Created by cm0630 on 2022/1/17.
//

import Foundation
import Alamofire

class APIManager{
    static let shared = APIManager()
    private init(){}
    
    func sendAPI(){
        guard let url = URL(string: "...") else { return }
        AF.request(url).response{
            response in
            print(response)
        }
    }
}
