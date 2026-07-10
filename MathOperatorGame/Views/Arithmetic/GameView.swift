import SwiftUI

struct GameView: View {
    
    @State private var viewModel: GameViewModel
    
    init(difficulty: Difficulty) {
        
        _viewModel = State(
            initialValue: GameViewModel(
                difficulty: difficulty
            )
        )
    }
    
    var body: some View {
        
        @Bindable var viewModel = viewModel
        
        VStack(spacing: 30) {
            
            Text("Question \(viewModel.questionNumber)")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("⭐ Score: \(viewModel.score)")
                .font(.title2)
                .fontWeight(.semibold)
            
            Text(
                "\(viewModel.operation.firstNumber) \(viewModel.symbol) \(viewModel.operation.secondNumber) = ?"
            )
            .font(.system(size: 42, weight: .bold))
            
            TextField(
                "Your answer",
                text: $viewModel.answer
            )
            .textFieldStyle(.roundedBorder)
            .keyboardType(.numberPad)
            
            Button {
                
                viewModel.checkAnswer()
                
            } label: {
                
                Text("Check Answer")
            }
            .buttonStyle(.borderedProminent)
            
            Text(viewModel.feedback)
                .font(.headline)
                .foregroundStyle(
                    viewModel.isCorrect ? .green : .red
                )
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    GameView(difficulty: .easy)
}
