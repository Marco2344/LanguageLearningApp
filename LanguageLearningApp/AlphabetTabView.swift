import SwiftUI

struct AlphabetTabView: View {
    var body: some View {
        TabView {
            AlphabetView().tabItem {
                Image(systemName: "number-one")
                Text("Katakana")
                    .foregroundColor(.black) // Set text color to blue
                    .font(.headline) // Set text size to headline
            }
            Alphabet2View()
                .tabItem {
                    Image(systemName: "number-one")
                    Text("Hiragana")
                  
                }
        }.accentColor(.brown)
    }
}

struct AlphabetTabView_Previews: PreviewProvider {
    static var previews: some View {
        AlphabetTabView()
    }
}