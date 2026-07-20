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
                    
                    AchievementRow(
                        achievement: achievement
                    )
                }
            }
        }
        .navigationTitle("Statistics")
    }
}
