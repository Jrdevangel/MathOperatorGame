import SwiftUI

struct GameHistoryView: View {

    let gameHistoryManager: GameHistoryManager

    var body: some View {

        List {

            if gameHistoryManager.sessions.isEmpty {

                ContentUnavailableView(
                    "No games played yet",
                    systemImage: "clock",
                    description: Text("Play your first game to build your history.")
                )

            } else {

                ForEach(gameHistoryManager.sessions.reversed()) { session in

                    GameHistoryRow(
                        session: session
                    )
                }
            }
        }
        .navigationTitle("Game History")
    }
}

#Preview {
    NavigationStack {
        GameHistoryView(
            gameHistoryManager: GameHistoryManager()
        )
    }
}
