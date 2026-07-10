import Observation

@Observable
class GameViewModel {

    let difficulty: Difficulty

    var operation: MathOperation
    var answer = ""
    var feedback = ""
    var isCorrect = false
    var questionNumber = 1
    var score = 0

    init(difficulty: Difficulty) {

        self.difficulty = difficulty

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

            score += 1
            questionNumber += 1

            operation = MathOperationFactory.generate(
                score: difficulty.initialScore + score
            )

            answer = ""

        } else {

            feedback = "❌ Incorrect. Try again!"
            isCorrect = false
        }
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
