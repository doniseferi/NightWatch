//
//  TaskSectionHeader.swift
//  NightWatch
//
//  Created by Edonis Seferi on 02/08/2022.
//
import SwiftUI

struct TaskSectionHeader: View {
    let symbolName: String
    let header: String
    
    var body: some View {
        HStack{
            
            Image(systemName: symbolName)
                .foregroundColor(.primary)
            
            Text(header.uppercased())
                .fontWeight(.semibold)
                .font(.title3)
                .foregroundColor(.accentColor)
        }
    }
}

struct TaskSectionHeader_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TaskSectionHeader(symbolName: "moon.stars", header: "Nightly tasks").previewLayout(.fixed(width: 300, height: 100))
            
            TaskSectionHeader(symbolName: "sunset", header: "Weekly tasks").previewLayout(.fixed(width: 300, height: 100))
            
            TaskSectionHeader(symbolName: "calendar", header: "Monthly tasks").previewLayout(.fixed(width: 300, height: 100))
        }
    }
}
