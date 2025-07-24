//
//  HabitStore.swift
//  HabitTracker
//
//  Created by snzhrk on 24.07.2025.
//

import Foundation
import Combine
import WidgetKit

final class HabitStore: ObservableObject {
    @Published var habits: [Habit] = []
    private let key = "habit.habits"
    
    init() {
        load()
    }
    
    private let sharedDefaults: UserDefaults = {
        UserDefaults(suiteName: "group.com.snzhrk.habits")!
    }()
    
    //core helpers:
    func save(){
        
    }
    
    func load(){
        
    }
    
    //core features:
    func addHabit(name: String){
        habits.append(Habit(name: name))
        save()
    }
    
    func deleteHabit(_ habit: Habit){
        habits.removeAll { $0.id == habit.id }
        save()
    }
    
    func renameHabit(_ habit: Habit, to newName: String){
        guard let i = habits.firstIndex(where: {$0.id == habit.id}) else {return}
        habits[i].name = newName
        save()
    }
    
    func toggleDoneHabit(for habit: Habit){
        //guard let i = index(of: habit) else { return }
        guard let i = habits.firstIndex(where: {$0.id == habit.id}) else { return }
        let today = Calendar.current.startOfDay(for: .now)
        
        if let r = habits[i].records.firstIndex(where: {$0.date == today}) {
            habits[i].records[r].isDone.toggle()
        }
        else {
            habits[i].records.append(.init(date: today, isDone: true))
        }
        save()
        
    }
    
    func isDoneTodayHabit(for habit: Habit) -> Bool{
        let today = Calendar.current.startOfDay(for: .now)
        return habits
            .first(where: {$0.id == habit.id})?
            .records.contains(where: {$0.date == today && $0.isDone}) ?? false
    }
}
