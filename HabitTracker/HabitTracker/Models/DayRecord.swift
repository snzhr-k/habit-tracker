//
//  DayRecord.swift
//  HabitTracker
//
//  Created by snzhrk on 24.07.2025.
//
 
import Foundation

struct DayRecord: Hashable, Codable {
    let date: Date
    var isDone: Bool
}
