//
//  AppSettings.swift
//  MissingPet
//
//  Created by Михаил Еремеев on 26.12.2020.
//

import Foundation

class AppSettings {
    
    static var isUserAuthorized: Bool {
        let accessTokenStorage = UserDefaultsAccessor<String>.init(key: Constants.accessTokenKey)
        return !(accessTokenStorage.value ?? "").isEmpty
    }
    
    static var currentUserId: Int? {
        let currentUserIdStorage = UserDefaultsAccessor<Int>.init(key: Constants.userIdKey)
        return currentUserIdStorage.value
    }
    
}
