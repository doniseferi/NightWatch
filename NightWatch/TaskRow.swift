//
//  TaskRow.swift
//  NightWatch
//
//  Created by Edonis Seferi on 09/08/2022.
//

import SwiftUI

struct TaskRow: View {
    @Binding var task: Task

    var body: some View {
        HStack {
            Button(
                action: {
                    task.isComplete = !task.isComplete
                },
                label: {
                    Image(systemName: task.isComplete ? "checkmark.square" : "square")
                })
            task.isComplete
            ? Text(task.name)
                .foregroundColor(.gray)
                .strikethrough()
            : Text(task.name)
        }
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: .constant(Task(name: "Do the thing", isComplete: false, lastCompleted: nil)))
            .previewLayout(.fixed(width: 200, height: 70))
        TaskRow(task: .constant(Task(name: "Do the other thing", isComplete: true, lastCompleted: nil)))
            .previewLayout(.fixed(width: 200, height: 70))
    }
}
