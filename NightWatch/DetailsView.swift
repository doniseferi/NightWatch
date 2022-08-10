//
//  DetailsView.swift
//  NightWatch
//
//  Created by Edonis Seferi on 02/08/2022.
//
import SwiftUI

struct DetailsView: View {
    
    @Binding var task: Task
    
    var body: some View {
        VStack {
            Text(task.name )
            Text("Placeholder details 1")
            Text("Placeholder details 2")
            
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
        DetailsView(task: Binding<Task>.constant(Task(name: "Close all windows", isComplete: false, lastCompleted: nil)))
    }
}
