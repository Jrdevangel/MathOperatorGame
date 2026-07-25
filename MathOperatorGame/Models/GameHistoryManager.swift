import Foundation
import Observation

@Observable
final class GameHistoryManager {
    
    private let historyKey = "gameHistory"
    private let defaults = UserDefaults.standard
    
    private let maximumSessions = 500
    
    private(set) var sessions: [SavedGameSession] = []
    
    init() {
        loadHistory()
    }
    
    func register(
        session: GameSession
    ) {
        
        sessions.insert(
            SavedGameSession(
                session: session
            ),
            at: 0
        )
        
        if sessions.count > maximumSessions {
            sessions.removeLast()
        }
        
        saveHistory()
    }
    
    private func loadHistory() {
        
        guard
            let data = defaults.data(
                forKey: historyKey
            ),
            let sessions = try? JSONDecoder().decode(
                [SavedGameSession].self,
                from: data
            )
        else {
            return
        }
        
        self.sessions = sessions
    }
    
    private func saveHistory() {
        
        guard
            let data = try? JSONEncoder().encode(
                sessions
            )
        else {
            return
        }
        
        defaults.set(
            data,
            forKey: historyKey
        )
    }
}
