//
//  AddTodoView.swift
//  Todo App
//
//  Created by Itunu Raimi on 26/02/2021.
//

import SwiftUI

struct AddTodoView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @State private var name = ""
    @State private var priority = "Normal"
    let priorities = ["Normal", "High", "Low"]
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    // MARK: - TODO NAME
                    TextField("Todo", text: $name)
                    
                    // MARK: - PRIORITY
                    Picker("Priority", selection: $priority) {
                        ForEach(priorities, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    // MARK: - SAVE BUTTON
                    Button(action: {
                        
                    }, label: {
                        Text("Save")
                    })
                } // Form
                
                Spacer()
            } // VStack
            .navigationBarTitle("New Todo", displayMode: .inline)
            .navigationBarItems(trailing:
                                    Button(action: {
                                        presentationMode.wrappedValue.dismiss()
                                    }, label: {
                                        Image(systemName: "xmark")
                                    })
            )
        } // Navigation
    }
}

// MARK: - PREVIEW
struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
