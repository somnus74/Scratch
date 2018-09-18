//
//  MessageService.swift
//  Smack
//
//  Created by Malcolm Edwards on 18/9/18.
//  Copyright © 2018 Xenophile Games. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class MessageService {
    static let instance = MessageService()
    
    var channels = [Channel]()
    
    func findAllChannel(completion: @escaping CompletionHandler) {
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            if response.result.error == nil {
                guard let data = response.data else { return }
                do {
                    let json = try JSON(data: data).array
                    for item in json! {
                        let name = item["name"].stringValue
                        let channelDesc = item["description"].stringValue
                        let id = item["_id"].stringValue
                        let channel = Channel(id: id, channelTitle: name, channelDesc: channelDesc)
                        self.channels.append(channel)
                        completion(true)
                    }
                } catch let error {
                    debugPrint(error as Any)
                    return
                }
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
}

