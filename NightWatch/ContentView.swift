//
//  ContentView.swift
//  NightWatch
//
//  Created by Edonis Seferi on 26/07/2022.
//
import SwiftUI

struct ContentView: View {
    @ObservedObject var nightWatchTasks: NightWatchTasks
    @State private var focusMode = false;
    @State private var reset = false;
    
    
    var body: some View {
        
        NavigationView {
            List {
                let nightWatchTasksWrapper = $nightWatchTasks
                
                TaskGroupListView(
                    header: "nightly tasks",
                    tasks: nightWatchTasksWrapper.nightly,
                    focusMode: $focusMode,
                    symbol: "moon.stars")
                
                TaskGroupListView(
                    header: "weekly tasks",
                    tasks: nightWatchTasksWrapper.weekly,
                    focusMode: $focusMode,
                    symbol: "sunset")
                
                TaskGroupListView(
                    header: "monthly tasks",
                    tasks: nightWatchTasksWrapper.monthly,
                    focusMode: $focusMode,
                    symbol: "calendar")
                
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(placement: .bottomBar, content: {
                    Toggle(isOn: $focusMode, label: {
                        Text("Focus Mode")
                    }).toggleStyle(.button)
                })
                ToolbarItem(placement: .navigationBarLeading, content: {
                    EditButton()
                })
                ToolbarItem(placement: .navigationBarLeading, content: {
                    Button(action: {reset = true}, label: {
                        Text("Reset")
                    })
                })
            }
        }
        .alert(Text("Are you sure?"),
               isPresented: $reset,
               actions: {
            
            Button(role: .destructive) {
                let resetTasks = NightWatchTasks()
                self.nightWatchTasks.nightly = resetTasks.nightly
                self.nightWatchTasks.weekly = resetTasks.weekly
                self.nightWatchTasks.monthly = resetTasks.monthly
            } label: {
                Text("Yes")
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(nightWatchTasks: NightWatchTasks())
    }
}
