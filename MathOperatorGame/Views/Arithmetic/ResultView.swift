import SwiftUI

struct ResultView: View {
    
    let session: GameSession
    
    var body: some View {
        
        VStack(spacing: 25) {
            
            Text("🎉 Game Finished!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Final Score")
                .font(.title2)
            
            Text("\(session.score) / \(session.maxQuestions)")
                .font(.system(size: 48, weight: .bold))
            
            VStack(spacing: 15) {
                
                Text("📊 Accuracy: \(Int(session.accuracy * 100))%")
                
                Text("🔥 Best Streak: \(session.bestStreak)")
                
                Text("✅ Correct Answers: \(session.correctAnswers)")
                
                Text("❓ Questions: \(session.questionsAnswered)")
            }
            .font(.title3)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ResultView(
        session: GameSession(
            difficulty: .easy
        )
    )
}
