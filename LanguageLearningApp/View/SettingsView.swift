//
//  SettingsView.swift
//  LanguageLearningApp
//
//  Created by User on 1/5/2024.
//

import SwiftUI
//this page appears before the quiz begins
//it allows you to select your quiz preferences
//also allows you to input your name and such
struct SettingsView: View {
    //default number of letters
    @State var numberOfLetters: Double = 23
    //will hold the default number of letters to pass between views
    @AppStorage("LETTER_COUNT_KEY") var maxLetterCount: Double = 0
    //so we can set the score to 0 before restarting the quiz
    @AppStorage("SCORE_KEY") var quizScore: Int = 0
    //lets u choose between each alphabet for the quiz
    @ObservedObject var loginvm : LoginViewModel
    var body: some View {
        ZStack{
            Color.yellow.opacity(0.29)
            VStack(spacing: 20) { // Added spacing between views
                Text("Quiz Preferences").font(.title).foregroundColor(.brown).bold().padding(50)


                Spacer()
                Text("Katakana Quiz").foregroundColor(.brown).font(.system(size: 26)).bold().padding(20)
                //allows us to select the numebr fo lettters we want in the quiz
                Text("Number of letters: \(Int(numberOfLetters))").foregroundColor(.brown).font(.system(size: 16))
                Slider(value: $numberOfLetters, in: 1...46, step: 1)
                    .padding()
                    .accentColor(.brown) // Change the color of the slider's track to brown
                Spacer()
                //takes use to the katakana quiz page
                NavigationLink(destination: QuizView(loginViewModel: loginvm).navigationBarBackButtonHidden(true)){
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.brown) // Fill the button with brown color
                        .frame(width: 200, height: 60) // Adjusted frame size
                        .overlay(
                            Text("BEGIN").padding().foregroundColor(.black.opacity(0.6)).font(.system(size: 26)).bold() // Set text color to yellow
                        )
                }.padding(100)
            }
            .padding()
            //resets some data in case youre replaying the game
            .onDisappear{
                maxLetterCount = numberOfLetters
                quizScore = 0
            }
        }.ignoresSafeArea()
       
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            SettingsView(loginvm: LoginViewModel())
        }
        
    }
}
