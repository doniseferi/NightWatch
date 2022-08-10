//
//  NightWatchTasks.swift
//  NightWatch
//
//  Created by Edonis Seferi on 07/08/2022.
//
import Foundation

class NightWatchTasks: ObservableObject {
    @Published var nightly = [
        Task(name: "Check all windws", isComplete: false, lastCompleted: nil),
        Task(name: "Check all doors", isComplete: false, lastCompleted: nil),
        Task(name: "Check the safe is locked", isComplete: false, lastCompleted: nil),
        Task(name: "Inspect security cameras", isComplete: false, lastCompleted: nil),
        Task(name: "Document all \"strange and unusual\" occurrances", isComplete: false, lastCompleted: nil),
        Task(name: "Check the mail box", isComplete: false, lastCompleted: nil),
        Task(name: "Clear ice from street", isComplete: false, lastCompleted: nil)
    ]
    
    @Published var weekly = [
        Task(name: "Check inside all vacant rooms", isComplete: false, lastCompleted: nil),
        Task(name: "Walk the perimeter of the building", isComplete: false, lastCompleted: nil)
    ]
    
    @Published var monthly = [
        Task(name: "Test security alarm", isComplete: false, lastCompleted: nil),
        Task(name: "Test motion detectors", isComplete: false, lastCompleted: nil),
        Task(name: "Test smoke alarm", isComplete: false, lastCompleted: nil)
    ]
}
