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


// Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unwindToChannel"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedin"
let USER_EMAIL = "useremail"


let HEROKU_APP_NAME = "smackchat8571"
let MLAB_DB_Name = "smackchat"


