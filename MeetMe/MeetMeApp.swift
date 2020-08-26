//
//  MeetMeApp.swift
//  MeetMe
//
//  Created by Tony Hajdini on 30/07/2020.
//

import SwiftUI

@main
struct MeetMeApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
