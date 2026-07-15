import SwiftUI

struct GameView: View {
    
    @State private var viewModel: GameViewModel
    let playerManager: PlayerManager
    
    @Environment(\.dismiss) private var dismiss
    
    init(
        difficulty: Difficulty,
        playerManager: PlayerManager
    ) {
        
        self.playerManager = playerManager
        
        _viewModel = State(
            initialValue: GameViewModel(
                difficulty: difficulty,
                playerManager: playerManager
            )
        )
    }
    
    var body: some View {
        
        @Bindable var viewModel = viewModel
        
        switch viewModel.state {
        case .playing:
            
            gameContent(viewModel: viewModel)
            
        case .finished:
            
            ResultView(
                session: viewModel.session,
                onPlayAgain: {
                    viewModel.restartGame()
                },
                onBackToMenu: {
                    dismiss()
                }
            )
        }
    }
    
        private func gameContent(viewModel: GameViewModel) -> some View {
            
            VStack(spacing: 30) {
                
                Text("Question \(viewModel.session.currentQuestionNumber)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("⭐ Score: \(viewModel.session.score)")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("🔥 Streak: \(viewModel.session.currentStreak)")
                    .font(.title3)
                
                Text("🏆 Best: \(viewModel.session.bestStreak)")
                    .font(.title3)
                
                Text(
                    "🎯 Accuracy: \(Int(viewModel.session.accuracy * 100))%"
                )
                .font(.title3)
                
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
        GameView(
            difficulty: .easy,
            playerManager: PlayerManager()
        )
    }
