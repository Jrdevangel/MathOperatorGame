import SwiftUI

struct GameView: View {

    @State private var operation = MathOperationFactory.generate(score: 0)
    @State private var answer = ""
    @State private var feedback = ""
    @State private var isCorrect = false
    @State private var questionNumber = 1
    @State private var score = 0
    
    var body: some View {

        VStack(spacing: 30) {

            Text("Question \(questionNumber)")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("⭐ Score: \(score)")
                .font(.title2)
                .fontWeight(.semibold)
            
            Text(
                "\(operation.firstNumber) \(symbol) \(operation.secondNumber) = ?"
            )
            .font(.system(size: 42, weight: .bold))

            TextField("Your answer", text: $answer)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)

            Button(action: {
                
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
                    operation = MathOperationFactory.generate(score: score)
                    answer = ""
                    
                } else {
                    
                    feedback = "❌ Incorrect. Try again!"
                    isCorrect = false
                }
                
            }) {
                Text("Check Answer")
            }
            .buttonStyle(.borderedProminent)
            
            Text(feedback)
                .font(.headline)
                .foregroundStyle(isCorrect ? .green : .red)
            
            Spacer()
        }
        .padding()
    }

    private var symbol: String {

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

#Preview {
    GameView()
}
