//
//  HabitTrackerApp.swift
//  HabitTracker
//
//  Created by snzhrk on 24.07.2025.
//

import SwiftUI

@main
struct HabitTrackerApp: App {
    @StateObject private var store = HabitStore()
    //this is where I create the instance of the habit store
    
    var body: some Scene {
        WindowGroup {
            HabitListView().environmentObject(store) //injecting the store downwards into viewtree
        }
    }
}

#Preview{
    HabitListView()
}
