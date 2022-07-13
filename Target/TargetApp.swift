//
//  TargetApp.swift
//  Target
//
//  Created by Iván González on 14/2/22.
//

import SwiftUI

@main
struct TargetApp: App {
    @StateObject var userInfo = UserInfo()
    var body: some Scene {
        WindowGroup {
            NavigatorView().environmentObject(userInfo)
        }
    }
}
