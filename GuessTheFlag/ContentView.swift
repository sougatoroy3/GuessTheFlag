//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Sougato Roy on 27/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var userScore = 0
    @State private var showingAlert = false
    
    var finalScore : Int{
        let score = userScore
        // code to check correct answer
        // code to add or subtract points
        
        return score
    }
    var body: some View {
        Button("Show Score"){
            showingAlert = true
        }
        .alert("Correct Answer", isPresented: $showingAlert){
            Button("OK"){}
        }message:{
            Label("Score: \(finalScore)", systemImage: "info.circle")
        }
        
    }
}

#Preview {
    ContentView()
}
