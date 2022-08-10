//
//  TaskListLinksView.swift
//  NightWatch
//
//  Created by Edonis Seferi on 02/08/2022.
//
import SwiftUI

struct TaskGroupListView: View {
    
    let header: String
    @Binding var tasks: [Task]
    @Binding var focusMode: Bool
    let symbol: String
    
    var body: some View {
        let filteredTasks = $tasks.filter { !focusMode || (!$0.isComplete.wrappedValue && focusMode) }
        
        Section {
            ForEach(filteredTasks, content: {
                $task in
                NavigationLink(
                    destination: DetailsView(task: $task),
                    label: {
                        TaskRow(task: $task)
                    })
//                    .swipeActions(edge: .trailing) {
//                        Button(
//                            role: .destructive,
//                            action: {
//                                task.isComplete = true
//                            },
//                            label: {
//                                Label("Delete", systemImage: "trash")
//                            })
//                    }
            }).onDelete { indexSet in
                tasks.remove(atOffsets: indexSet)
            }.onMove { indices, newOffset in
                tasks.move(fromOffsets: indices, toOffset: newOffset)
            }
        } header: {
            TaskSectionHeader(symbolName: symbol, header: header)
        }
    }
}

let nightly = [
    Task(name: "Check all windws", isComplete: true, lastCompleted: nil),
    Task(name: "Check all doors", isComplete: false, lastCompleted: nil),
    Task(name: "Clear ice from street", isComplete: false, lastCompleted: nil),
]

struct TaskListLinksView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            List {
                TaskGroupListView(header: "nightly tasks", tasks: Binding<[Task]>.constant(nightly), focusMode: .constant(false), symbol: "moon.stars")
            }.previewLayout(.fixed(width: 400, height: 220))
            List {
                TaskGroupListView(header: "nightly tasks", tasks: Binding<[Task]>.constant(nightly), focusMode: .constant(true), symbol: "moon.stars")
            }.previewLayout(.fixed(width: 400, height: 175))
        }
    }
}
