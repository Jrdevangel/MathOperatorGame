import Foundation

struct Achievement: Identifiable {

    let id: String

    let title: String

    let description: String

    let progress: Int
    
    let goal: Int
    
    let isUnlocked: Bool
}

extension Achievement {

    static let sampleAchievements: [Achievement] = [

        Achievement(
            id: "first_victory",
            title: "First Victory",
            description: "Complete your first game.",
            progress: 1,
            goal: 1,
            isUnlocked: true
        ),

        Achievement(
            id: "math_expert",
            title: "Math Expert",
            description: "Answer 100 questions correctly.",
            progress: 36,
            goal: 100,
            isUnlocked: false
        ),

        Achievement(
            id: "speed_runner",
            title: "Speed Runner",
            description: "Finish a game in under one minute.",
            progress: 0,
            goal: 1,
            isUnlocked: false
        )
    ]
}
