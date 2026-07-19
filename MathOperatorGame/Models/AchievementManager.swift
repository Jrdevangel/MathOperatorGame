import Foundation

struct AchievementManager {
    
    static func archievements(
        for player: Player
    ) -> [Achievement] {
        
        [
            Achievement(
                id: "first_game",
                title: "First Game",
                description: "Complete your first game.",
                progress: 1,
                goal: 1,
                isUnlocked: player.totalGamesPlayed >= 1
            ),
            
            Achievement(
                id: "math_apprentice",
                title: "Math Apprentice",
                description: "Complete 10 games.",
                progress: 1,
                goal: 1,
                isUnlocked: player.totalGamesPlayed >= 10
            ),
            
            Achievement(
                id: "accurate_player",
                title: "Accurate Player",
                description: "Reach 90% overall accuracy.",
                progress: 1,
                goal: 1,
                isUnlocked: player.globalAccuracy >= 0.90
            ),
            
            Achievement(
                id: "streak_master",
                title: "Streak Master",
                description: "Reach a streak of 20.",
                progress: 1,
                goal: 1,
                isUnlocked: player.bestStreak >= 20
            ),
            
            Achievement(
                id: "arithmetic_expert",
                title: "Arithmetic Expert",
                description: "Score 100 points on Easy difficulty.",
                progress: 1,
                goal: 1,
                isUnlocked: player.bestScoreEasy >= 100)
        ]
    }
}
