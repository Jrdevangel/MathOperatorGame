import SwiftUI

struct StatisticsView: View {
    
    let playerManager: PlayerManager
    
    var body: some View {
        
        List {
            
            Section("Player") {
                
                Text(playerManager.player.name)
            }
            
            Section("Progression") {
                
                LabeledContent(
                    "Level",
                    value: "\(playerManager.player.level)"
                )
                
                LabeledContent(
                    "Experience",
                    value: "\(playerManager.player.experience) / \(playerManager.player.experienceRequired)"
                )
                
                ProgressView(
                    value: Double(playerManager.player.experience),
                    total: Double(playerManager.player.experienceRequired)
                )
            }
        }
        
        Section("Games") {
            
            LabeledContent(
                "Games Played",
                value: "\(playerManager.player.totalGamesPlayed)"
            )
            
            LabeledContent(
                "Accuracy",
                value: "\(playerManager.player.accuracyPercentage)%"
            )
            
            LabeledContent(
                "Best Streak",
                value: "\(playerManager.player.bestStreak)"
            )
        }
        
        Section("Best Scores") {
            
            LabeledContent(
                "Easy",
                value: "\(playerManager.player.bestScoreEasy)"
            )
            
            LabeledContent(
                "Medium",
                value: "\(playerManager.player.bestScoreMedium)"
            )
            
            LabeledContent(
                "Advanced",
                value: "\(playerManager.player.bestScoreAdvanced)"
            )
        }
        
        Section("Achievements") {
            
            ForEach(
                AchievementManager.achievements(
                    for: playerManager.player
                )
            ) { achievement in
                
                HStack {
                    
                    Image(
                        systemName: achievement.isUnlocked
                        ? "checkmark.seal.fill"
                        : "lock.fill"
                    )
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
                }
            }
        }
    }
}

#Preview {
    
    NavigationStack {
        
        StatisticsView(
            playerManager: PlayerManager()
        )
    }
}
