//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Sougato Roy on 27/07/25.
//

import SwiftUI

struct FlagImage : View{
    var country : String
    
    var body: some View{
        Image(country)
            .clipShape(.capsule)
            .shadow(radius: 5)
    }
}

struct ContentView: View {
    @State private var userScore = 0
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    @State var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State var correctAnswer = Int.random(in: 0...2)
    
    @State var chance = 0
    @State private var gameOver = false
    
    var finalScore : Int{
        let score = userScore
        // code to check correct answer
        // add a condition
        // code to add or subtract points
        
        return score
    }
    
    func flagTapped(_ number: Int){
        if number == correctAnswer{
            scoreTitle = "Correct Answer"
            userScore += 1
            showingScore = true
        }else{
            scoreTitle = "Wrong Answer, that's the flag of \(countries[number])"
            userScore -= 1
            showingScore = true
        }
        chance += 1
        if chance == 8{
            gameOver = true
        }
    }
    
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func restartGame(){
        chance = 0
        userScore = 0
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    var body: some View {
        ZStack{
//            LinearGradient(colors: [.blue, .black], startPoint: .top, endPoint: .bottom)
//                .ignoresSafeArea()
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundStyle(.white)

                // current VStack(spacing: 15) code
                VStack(spacing: 15)
                {
                    VStack{
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        Text(countries[correctAnswer])
                            //.foregroundStyle(.white)
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3){number in
                        Button{
                            //flag was tapped
                            flagTapped(number)
                        } label:{
                            FlagImage(country: countries[number])
                        }
                    }
                                        
                }
                
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                Spacer()
                Spacer()
                Text("Score: \(finalScore)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
        //Alert for notifying current choice
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Your score \(userScore)")
        }
        
        //Alert for Game over
        .alert("Final Score is \(finalScore) out of 8", isPresented: $gameOver){
            Button("Restart", action: restartGame)
        }
    }
}

#Preview {
    ContentView()
}
