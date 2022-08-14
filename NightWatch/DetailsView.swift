//
//  DetailsView.swift
//  NightWatch
//
//  Created by Edonis Seferi on 02/08/2022.
//
import SwiftUI

struct DetailsView: View {
    
    @Binding var task: Task
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    var body: some View {
        VStack {
            Text(task.name )
            
            Text("Placeholder details 1")
            
            Divider()
            
            if verticalSizeClass == .regular {
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .padding([.leading, .trailing], 10)
            
                Divider()
            }
            
            Button(task.isComplete
                   ? "Reactivate"
                   : "Mark Complete") {
                task.isComplete = !task.isComplete
            }
        }
    }
}


struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
        DetailsView(task: Binding<Task>.constant(Task(name: "Close all doors", isComplete: false, lastCompleted: nil)))
            .previewInterfaceOrientation(.portrait)
        
        
            DetailsView(task: Binding<Task>.constant(Task(name: "Close all doors", isComplete: false, lastCompleted: nil)))
                .previewInterfaceOrientation(.portrait)
                .previewLayout(.fixed(width: 667, height: 375))
            
            
        }
    }
}
