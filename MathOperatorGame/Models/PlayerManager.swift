import Foundation
import Observation

@Observable
final class PlayerManager {

    private let playerKey = "player"
    private let defaults = UserDefaults.standard

    var player = Player(
        name: "Player"
    )

    var didLevelUp = false

    init() {
        loadPlayer()
    }

    func register(session: GameSession) {

        didLevelUp = player.register(
            session: session
        )

        savePlayer()
    }

    private func loadPlayer() {

        guard
            let data = defaults.data(
                forKey: playerKey
            ),
            let player = try? JSONDecoder().decode(
                Player.self,
                from: data
            )
        else {
            return
        }

        self.player = player
    }

    private func savePlayer() {

        guard
            let data = try? JSONEncoder().encode(
                player
            )
        else {
            return
        }

        defaults.set(
            data,
            forKey: playerKey
        )
    }
}
