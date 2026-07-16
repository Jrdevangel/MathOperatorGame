import SwiftUI

struct WelcomeView: View {
    
    @State private var playerManager = PlayerManager()
    
    var body: some View {
        
        NavigationStack {
            
            VStack {

                HStack {
                    
                    Spacer()

                    NavigationLink(
                        destination: StatisticsView(playerManager: playerManager
                        )
                    ) {
                        
                        Image(systemName: "chart.bar.fill")
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

                NavigationLink(
                    destination: LearningAreasView(
                        playerManager: playerManager
                    )
                ) {
                    
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
    WelcomeView()
}
