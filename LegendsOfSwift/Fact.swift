//
//  Fact.swift
//  LegendsOfSwift
//
//  Created by Ella Gryf-Lowczowska on 27/06/2019.
//  Copyright © 2019 Ella Gryf-Lowczowska. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Fact {
    var quote: String = ""
    var url: String = "https://api.chucknorris.io/jokes/random?category=dev"
    
    func getQuote(completed: @escaping ()->() ) {
        Alamofire.request(url).responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                self.quote = json["value"].stringValue
            case .failure(let error):
                self.quote = "ERROR: no quote returned"
                print("ERROR: \(error)")
            }
            completed()
        }
    }
}
