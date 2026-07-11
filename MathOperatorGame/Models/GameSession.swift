import Foundation

struct GameSession {
    
    let difficulty: Difficulty
    
    private(set) var score = 0
    private(set) var questionsAnswered = 0
    private(set) var correctAnswers = 0
    private(set) var currentStreak = 0
    private(set) var bestStreak = 0

    mutating func registerCorrectAnswer() {
        score += 1
        questionsAnswered += 1
        correctAnswers += 1
        
        currentStreak += 1
        
        if currentStreak > bestStreak {
            bestStreak = currentStreak
        }
    }
    
    mutating func registerIncorrectAnswer() {
        
        questionsAnswered += 1
        currentStreak = 0
    }
    
    var accuracy: Double {
        
        guard questionsAnswered > 0 else {
            return 0
        }
        
        return Double(correctAnswers) / Double(questionsAnswered)
    }
}
