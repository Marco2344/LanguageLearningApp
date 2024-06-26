import SwiftUI

struct MainMenuView: View {
    var body: some View {
        VStack(spacing: 20) { // Added spacing between views
            Text("Japanese Memory App")
            Spacer()
            NavigationLink(destination: SettingsView()){
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 2)
                    .frame(width: 200, height: 40) // Adjusted frame size
                    .overlay(
                        Text("Quiz").padding()
                    )
            }
            NavigationLink(destination: AlphabetView()){
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 2)
                    .frame(width: 200, height: 40) // Adjusted frame size
                    .overlay(
                        Text("Alphabet").padding()
                    )
            }
            NavigationLink(destination: ScoreView()){
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue, lineWidth: 2)
                    .frame(width: 200, height: 40) // Adjusted frame size
                    .overlay(
                        Text("Scores").padding()
                    )
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            MainMenuView()
        }
    }
}
