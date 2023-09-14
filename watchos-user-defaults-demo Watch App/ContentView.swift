//
//  ContentView.swift
//  watchos-user-defaults-demo Watch App
//
//  Created by keckadmin on 9/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var counter: Int = UserDefaultsManager.counter
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Counter: \(counter)")
                .font(.largeTitle)
            
            Button("Increment Counter") {
                counter += 1
                UserDefaultsManager.counter = counter
            }
            .padding(.all, 10)
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
