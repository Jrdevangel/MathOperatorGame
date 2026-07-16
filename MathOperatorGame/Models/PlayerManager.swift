import Foundation
import Observation

@Observable
final class PlayerManager {
    
    private let playerKey = "player"
    
    var player = Player(
        name: "Player"
    )
    
    func register(session: GameSession) {
        
        player.register(
            session: session
        )
        savePlayer()
    }
    
    init() {
        
        loadPlayer()
    }
    
    private func loadPlayer() {
        
        guard
            let data = UserDefaults.standard.data(
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
        
        UserDefaults.standard.set(
            data,
            forKey: playerKey
        )
    }
}
