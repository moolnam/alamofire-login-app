//
//  UserData.swift
//  alamofire-login-app
//
//  Created by KimJongHee on 2022/05/31.
//

import Foundation
import SwiftUI

struct UserData : Codable, Identifiable {
    var uuid: UUID = UUID()
    var id : Int
    var name: String
    var email: String
    var avatar: String
    
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case email
        case avatar
    }
}
