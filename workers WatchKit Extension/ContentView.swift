//
//  ContentView.swift
//  workers WatchKit Extension
//
//  Created by codemilli on 2021/04/24.
//

import SwiftUI

struct ContentView: View {
    @State var mesage = "Hello World !!!"
    
    var body: some View {
        VStack {
            NavigationLink(destination: RegisterView()) {
                Text("Register")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
