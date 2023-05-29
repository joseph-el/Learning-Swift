// :hello
//  ContentView.swift
//  Learnig
//
//  Created by Youssef El idrissi on 25/5/2023.
//
  
import SwiftUI
import UIKit

struct ContentView: View {
    var body: some View {
        VStack {
        
            
            //Button("More") { progress += 0.05 }
//    ProgressView(value: progress)
//            Button("More") { progress += 0.05 }
            
            Text("SportApp ♿️")
            .font(.title3)
            .bold()
            .padding()


            Text("HELLO")
                .font(.title2)
                .textFieldStyle(.roundedBorder)
            
            
            Image("dd")
                .resizable()
                .cornerRadius(20)
                .frame(width: 350.0, height: 500.0)
                .imageScale(.large)

                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ProgressView()
    }
}
