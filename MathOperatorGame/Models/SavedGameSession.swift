import Foundation

struct SavedGameSession: Codable, Identifiable {
    
    let id: UUID
    let session: GameSession
    let playedAt: Date
    
    init(
        session: GameSession
    ) {
        self.id = UUID()
        self.session = session
        self.playedAt = Date()
    }
}
