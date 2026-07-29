import SwiftUI

struct ContentView: View {

    @State
    private var playerManager = PlayerManager()

    @State
    private var gameHistoryManager = GameHistoryManager()

    var body: some View {

        WelcomeView(
            playerManager: playerManager,
            gameHistoryManager: gameHistoryManager
        )
    }
}

#Preview {
    ContentView()
}
