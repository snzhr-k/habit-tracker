import SwiftUI

@MainActor final class HabitListViewModel: ObservableObject {
    private var store: HabitStore //passed from the HabitListView view
    
    init(store: HabitStore) {
        self.store = store
    }
    
    func addHabit(named name: String){
        withAnimation{
            store.addHabit(name: name)
        }
    }
    
    func deleteHabit(id: UUID){
        store.deleteHabit(<#T##habit: Habit##Habit#>)
    }
}
