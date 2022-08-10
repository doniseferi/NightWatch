//
//  NightWatchApp.swift
//  NightWatch
//
//  Created by Edonis Seferi on 26/07/2022.
//

import SwiftUI

@main
struct NightWatchApp: App {
    
    @StateObject private var nightWatchTasks = NightWatchTasks()
    
    var body: some Scene {
        WindowGroup {
            ContentView(nightWatchTasks: nightWatchTasks)
        }
    }
}
