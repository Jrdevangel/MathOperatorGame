import Observation

@Observable
final class PlayerManager {
    
    var player = Player(
        name: "Player"
    )
    
    func register(session: GameSession) {
        
        player.register(
            session: session
        )
    }
}
