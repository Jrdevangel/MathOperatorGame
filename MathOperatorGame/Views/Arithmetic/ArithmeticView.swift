import SwiftUI

struct ArithmeticView: View {
    
    let playerManager: PlayerManager
    
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
                    playerManager: playerManager
                )
            ) {
                Text("Easy")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)

            NavigationLink(
                destination: GameView(
                    difficulty: .medium,
                    playerManager: playerManager
                    )
                ) {
                Text("Medium")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)

            NavigationLink(
                destination: GameView(
                    difficulty: .advanced,
                    playerManager: playerManager
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
            playerManager: PlayerManager()
        )
    }
}
