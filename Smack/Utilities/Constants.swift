//
//  Constants.swift
//  Smack
//
//  Created by Malcolm Edwards on 11/9/18.
//  Copyright © 2018 Xenophile Games. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URL = "https://smackchat8571.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let HEADER = [
    "Contect-Type": "application/json; charset = utf-8"
]
let URL_USER_ADD = "\(BASE_URL)user/add"

// Colors
let smackPurplePlaceHolder = #colorLiteral(red: 0.3266413212, green: 0.4215201139, blue: 0.7752227187, alpha: 0.5)

// Notification constants
let NOTIF_DATA_DID_CHANGE = Notification.Name("notifUserDataChanged")


// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedin"
let USER_EMAIL = "useremail"


let HEROKU_APP_NAME = "smackchat8571"
let MLAB_DB_Name = "smackchat"


