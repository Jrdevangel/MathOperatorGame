import Observation

@Observable
class GameViewModel {

    let difficulty: Difficulty

    var session: GameSession

    var operation: MathOperation
    
    var state: GameState = .playing
    var answer = ""
    var feedback = ""
    var isCorrect = false
    
    init(difficulty: Difficulty) {

        self.difficulty = difficulty
        self.session = GameSession(
            difficulty: difficulty
        )

        self.operation = MathOperationFactory.generate(
            score: difficulty.initialScore
        )
    }

    func checkAnswer() {

        guard let userAnswer = Int(answer) else {

            feedback = "Please enter a valid number."
            isCorrect = false
            return
        }

        if userAnswer == operation.calculateAnswer() {
            
            feedback = "✅ Correct!"
            isCorrect = true
            
            session.registerCorrectAnswer()
            
            if session.isFinished {
                state = .finished
            } else {
                generateNextOperation()
            }
            
            answer = ""
            
        } else {
            
            feedback = "❌ Incorrect. Try again!"
            isCorrect = false
            
            session.registerIncorrectAnswer()
        }
    }
    
    private func generateNextOperation() {
        
        operation = MathOperationFactory.generate(
            score: difficulty.initialScore + session.score
        )
    }

    var symbol: String {

        switch operation.operationType {

        case .addition:
            return "+"

        case .subtraction:
            return "-"

        case .multiplication:
            return "×"

        case .division:
            return "÷"
        }
    }
}
