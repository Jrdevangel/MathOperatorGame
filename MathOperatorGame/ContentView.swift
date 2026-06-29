import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                
                HStack {
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "globe")
                            .font(.title2)
                    }
                    .padding(.trailing, 20)
                    .padding(.top, 10)
                }
                
                Spacer()
                
                Text("MathOperatorGame")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                Text("Learn mathematics while playing")
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .padding(.top, 8)
                
                Spacer()

                NavigationLink(destination: Text("Next Screen Placeholder")) {
                    Text("Start")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(width: 180, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
