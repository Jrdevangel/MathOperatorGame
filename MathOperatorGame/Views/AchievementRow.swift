import SwiftUI

struct AchievementRow: View {
    
    let achievement: Achievement
    
    var body: some View {
        
        HStack(spacing: 12) {
            
            Image(
                systemName: achievement.isUnlocked
                ? "checkmark.seal.fill"
                : "lock.fill"
            )
            .font(.title2)
            .foregroundStyle(
                achievement.isUnlocked
                ? .green
                : .secondary
            )
            
            VStack(
                alignment: .leading,
                spacing: 4
            ) {
                
                Text(achievement.title)
                    .font(.headline)
                
                Text(achievement.description)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    
    AchievementRow(
        achievement: Achievement(
            id: "preview",
            title: "First Game",
            description: "Complete your first game.",
            progress: 1,
            goal: 1,
            isUnlocked: true)
    )
}
