//
//  ContentView.swift
//  workers
//
//  Created by codemilli on 2021/04/24.
//

import SwiftUI

struct ContentView: View {
    @State var mesage = "Hello World !!!"
    
    var body: some View {
        Text(mesage)
            .padding()
        Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
            Text("Push me")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
