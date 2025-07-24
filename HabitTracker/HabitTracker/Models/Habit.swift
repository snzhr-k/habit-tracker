//
//  Habit.swift
//  HabitTracker
//
//  Created by snzhrk on 24.07.2025.
//

import Foundation
import SwiftUI

struct Habit: Identifiable, Codable, Hashable {
    let id: UUID
    var name: String
    var records: [DayRecord]
    
    init(name: String){
        self.id = UUID()
        self.name = name
        self.records = []
    }
}
