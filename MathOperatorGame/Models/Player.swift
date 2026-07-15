import Foundation

struct Player {
    
    let name: String
    
    private(set) var totalGamesPlayed = 0
    
    private(set) var totalCorrectAnswers = 0
    
    private(set) var totalQuestionsAnswered = 0
    
    private(set) var bestScoreEasy = 0
    
    private(set) var bestScoreMedium = 0
    
    private(set) var bestScoreAdvanced = 0
    
    private(set) var bestStreak = 0
    
    var globalAccuracy: Double {
        
        guard totalQuestionsAnswered > 0 else {
            return 0
        }
        
        return Double(totalCorrectAnswers) / Double(totalQuestionsAnswered)
    }
    
    mutating func register(session: GameSession) {
        
        totalGamesPlayed += 1
        
        totalCorrectAnswers += session.correctAnswers
        
        totalQuestionsAnswered += session.questionsAnswered
        
        if session.bestStreak > bestStreak {
            bestStreak = session.bestStreak
        }
        
        switch session.difficulty {

        case .easy:
            bestScoreEasy = max(bestScoreEasy, session.score)
            
        case .medium:
            bestScoreMedium = max(bestScoreMedium, session.score)
            
        case .advanced:
            bestScoreAdvanced = max(bestScoreAdvanced, session.score)
        }
    }
}
