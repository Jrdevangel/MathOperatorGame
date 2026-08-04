import SwiftUI

struct GameHistoryRow: View {

    let session: SavedGameSession

    var body: some View {

        VStack(alignment: .leading, spacing: 8) {

            Text(session.playedAt.formatted(date: .abbreviated, time: .shortened))
                .font(.caption)
                .foregroundStyle(.secondary)
            
            Text(session.session.difficulty.rawValue)
                .font(.headline)
            
            Text("Score: \(session.session.score)")

            Text("Accuracy: \(Int(session.session.accuracy * 100))%")

            Text("Correct Answers: \(session.session.correctAnswers)")

            Text("Best Streak: \(session.session.bestStreak)")
        }
        .padding(.vertical, 4)
    }
}
