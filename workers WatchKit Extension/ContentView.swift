//
//  ContentView.swift
//  workers WatchKit Extension
//
//  Created by codemilli on 2021/04/24.
//

import SwiftUI
import HealthKit

struct ContentView: View {
    private var healthStore = HKHealthStore()
    let heartRateQuantity = HKUnit(from: "count/min")
    
    
    @State private var rate = 0
    
    var body: some View {
        VStack {
            NavigationLink(destination: RegisterView()) {
                Text("Register")
            }
        }.onAppear(perform: {
            start()
        })
    }
    
    func start() {
        authorizeHealthKit();
    }
    
    func authorizeHealthKit() {
        let healthKitTypes: Set = [HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)!]
        healthStore.requestAuthorization(toShare: healthKitTypes, read: healthKitTypes) {
            _, _ in
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
