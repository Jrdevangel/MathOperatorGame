import SwiftUI

struct AchievementsView: View {

    let achievements: [Achievement]

    var body: some View {

        NavigationStack {

            List(achievements) { achievement in

                AchievementRow(
                    achievement: achievement
                )
            }
            .navigationTitle("Achievements")
        }
    }
}

#Preview {

    AchievementsView(
        achievements: Achievement.sampleAchievements
    )
}
