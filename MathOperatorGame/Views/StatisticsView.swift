import SwiftUI

struct StatisticsView: View {
    
    let playerManager: PlayerManager
    
    var body: some View {
        
        List {
            
            Section("Player") {
                
                Text(playerManager.player.name)
            }
            
            Section("Games") {
                
                LabeledContent(
                    "Games Played",
                    value: "\(playerManager.player.totalGamesPlayed)"
                )
                
                LabeledContent(
                    "Accuracy",
                    value: "\(Int(playerManager.player.globalAccuracy * 100))%"
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
        .navigationTitle("Statistics")
    }
}

#Preview {
    
    NavigationStack {
        
        StatisticsView(
            playerManager: PlayerManager()
        )
    }
}
