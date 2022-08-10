//
//  Task.swift
//  NightWatch
//
//  Created by Edonis Seferi on 06/08/2022.
//
import Foundation

struct Task: Identifiable {
    let id = UUID()
    let name: String
    var isComplete: Bool
    let lastCompleted: Date?
}
