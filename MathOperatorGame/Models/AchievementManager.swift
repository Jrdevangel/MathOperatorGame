import Foundation

struct AchievementManager {

    static func achievements(for player: Player) -> [Achievement] {

        [
            firstGameAchievement(for: player),
            mathApprenticeAchievement(for: player),
            accuratePlayerAchievement(for: player),
            streakMasterAchievement(for: player),
            arithmeticExpertAchievement(for: player)
        ]
    }

    private static func firstGameAchievement(
        for player: Player
    ) -> Achievement {

        Achievement(
            id: "first_game",
            title: "First Game",
            description: "Complete your first game.",
            progress: min(player.totalGamesPlayed, 1),
            goal: 1,
            isUnlocked: player.totalGamesPlayed >= 1
        )
    }

    private static func mathApprenticeAchievement(
        for player: Player
    ) -> Achievement {

        Achievement(
            id: "math_apprentice",
            title: "Math Apprentice",
            description: "Complete 10 games.",
            progress: min(player.totalGamesPlayed, 10),
            goal: 10,
            isUnlocked: player.totalGamesPlayed >= 10
        )
    }

    private static func accuratePlayerAchievement(
        for player: Player
    ) -> Achievement {

        Achievement(
            id: "accurate_player",
            title: "Accurate Player",
            description: "Reach 90% overall accuracy.",
            progress: min(
                Int(player.globalAccuracy * 100),
                90
            ),
            goal: 90,
            isUnlocked: player.globalAccuracy >= 0.90
        )
    }

    private static func streakMasterAchievement(
        for player: Player
    ) -> Achievement {

        Achievement(
            id: "streak_master",
            title: "Streak Master",
            description: "Reach a streak of 20.",
            progress: min(
                player.bestStreak,
                20
            ),
            goal: 20,
            isUnlocked: player.bestStreak >= 20
        )
    }

    private static func arithmeticExpertAchievement(
        for player: Player
    ) -> Achievement {

        Achievement(
            id: "arithmetic_expert",
            title: "Arithmetic Expert",
            description: "Score 100 points on Easy difficulty.",
            progress: min(
                player.bestScoreEasy,
                100
            ),
            goal: 100,
            isUnlocked: player.bestScoreEasy >= 100
        )
    }
}
