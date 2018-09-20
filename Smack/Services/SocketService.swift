//
//  SocketService.swift
//  Smack
//
//  Created by Malcolm Edwards on 19/9/18.
//  Copyright © 2018 Xenophile Games. All rights reserved.
//

import UIKit
import SocketIO

class SocketService: NSObject {

    static let instance = SocketService()

    var sockman = SocketManager(socketURL: URL(string: BASE_URL)!)
    var socket : SocketIOClient

    override init() {
        socket = sockman.defaultSocket
        super.init()
    }


    func establishConnection() {
        socket.connect()
    }
    
    func closeConnection() {
        socket.disconnect()
    }
    
    func addChannel(channelName: String, channelDesc: String, completion: @escaping CompletionHandler) {
        socket.emit("newChannel", channelName, channelDesc)
        completion(true)
    }
    
    func getChannel(completion: @escaping CompletionHandler) {
        socket.on("channelCreated") { (dataArray, ack) in
            guard let channelName = dataArray[0] as? String else { return }
            guard let channelDesc = dataArray[1] as? String else { return }
            guard let channelId = dataArray[2] as? String else { return }
            
            let newChannel = Channel(channelTitle: channelName, channelDesc: channelDesc, id: channelId)
            MessageService.instance.channels.append(newChannel)
            completion(true)
        }
    }
    
    func addMessage(messageBody: String, userId: String, channelId: String, completion: @escaping CompletionHandler) {
        let user = UserDataService.instance
        socket.emit("newMessage", messageBody, userId, channelId, user.name, user.avatarName, user.avatarColor)
        completion(true)
    }
    
    
}
