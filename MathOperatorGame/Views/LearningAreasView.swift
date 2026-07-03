import SwiftUI

struct LearningAreasView: View {

    var body: some View {

        VStack(spacing: 25) {

            Text("Learning Areas")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)

            Spacer()

            NavigationLink(destination: ArithmeticView()) {
                LearningAreaRow(
                    title: "Arithmetic",
                    icon: "plus.forwardslash.minus"
                )
            }
            .buttonStyle(.plain)

            LearningAreaRow(
                title: "Fractions",
                icon: "square.split.2x2",
                locked: true
            )

            LearningAreaRow(
                title: "Decimals",
                icon: "numbers",
                locked: true
            )

            LearningAreaRow(
                title: "Percentages",
                icon: "percent",
                locked: true
            )

            LearningAreaRow(
                title: "Algebra",
                icon: "function",
                locked: true
            )

            LearningAreaRow(
                title: "Geometry",
                icon: "triangle",
                locked: true
            )

            Spacer()
        }
        .padding()
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LearningAreaRow: View {

    let title: String
    let icon: String
    var locked: Bool = false

    var body: some View {

        HStack {

            Image(systemName: icon)
                .font(.title2)
                .frame(width: 30)

            Text(title)
                .font(.title3)

            Spacer()

            Image(systemName: locked ? "lock.fill" : "chevron.right")
                .foregroundStyle(.secondary)
        }
        .padding()
        .background(Color(.systemGray6))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    NavigationStack {
        LearningAreasView()
    }
}
