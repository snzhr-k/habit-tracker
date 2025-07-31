//
//  HabitListView.swift
//  HabitTracker
//
//  Created by snzhrk on 26.07.2025.
//

import SwiftUI

struct HabitListView: View {
    @EnvironmentObject var store: HabitStore //observes it
    @StateObject var viewModel: HabitListViewModel = HabitListViewModel(store: store) //owns it
    
    var body: some View {
        Text("Habits").font(.largeTitle).fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: .leading).padding()
        

    }
}

struct ListedHabits: View{
    var body: some View{
        
        NavigationView{
            
        }
    }
}

#Preview {
    HabitListView()
}
