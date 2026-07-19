import Foundation

struct Achievement: Identifiable {

    let id: String

    let title: String

    let description: String

    let isUnlocked: Bool
}

extension Achievement {

    static let sampleAchievements: [Achievement] = [

        Achievement(
            id: "first_victory",
            title: "First Victory",
            description: "Complete your first game.",
            isUnlocked: true
        ),

        Achievement(
            id: "math_expert",
            title: "Math Expert",
            description: "Answer 100 questions correctly.",
            isUnlocked: false
        ),

        Achievement(
            id: "speed_runner",
            title: "Speed Runner",
            description: "Finish a game in under one minute.",
            isUnlocked: false
        )
    ]
}
