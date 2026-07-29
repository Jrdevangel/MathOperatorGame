import SwiftUI

struct ArithmeticView: View {
    
    let playerManager: PlayerManager
    
    let gameHistoryManager: GameHistoryManager
    
    var body: some View {

        VStack(spacing: 25) {

            Text("Arithmetic")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Choose a difficulty level")
                .font(.headline)
                .foregroundStyle(.secondary)

            Spacer()

            NavigationLink(
                destination: GameView(
                    difficulty: .easy,
                    playerManager: playerManager,
                    gameHistoryManager: gameHistoryManager
                )
            ) {
                Text("Easy")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)

            NavigationLink(
                destination: GameView(
                    difficulty: .medium,
                    playerManager: playerManager,
                    gameHistoryManager: gameHistoryManager
                )
            ) {
                Text("Medium")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)

            NavigationLink(
                destination: GameView(
                    difficulty: .advanced,
                    playerManager: playerManager,
                    gameHistoryManager: gameHistoryManager
                )
            ) {
                Text("Advanced")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)

            Spacer()
        }
        .padding()
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ArithmeticView(
            playerManager: PlayerManager(),
            gameHistoryManager: GameHistoryManager()
        )
    }
}
