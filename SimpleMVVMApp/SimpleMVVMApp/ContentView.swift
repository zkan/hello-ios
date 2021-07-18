//
//  ContentView.swift
//  SimpleMVVMApp
//
//  Created by Kan Ouivirach on 18/7/2564 BE.
//

import SwiftUI

class ViewModel: ObservableObject  {
    @Published var myText: String = ""
    @Published var myMessage: String = "empty"
    
    init() {
        
    }
}

struct ContentView: View {
    @StateObject var model: ViewModel = ViewModel()
    
    var body: some View {
        VStack {
            TextField("Enter some text", text: $model.myText)
                .border(Color.gray)
            
            Text("\(model.myMessage)")
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
