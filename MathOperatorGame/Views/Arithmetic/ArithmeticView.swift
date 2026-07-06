import SwiftUI

struct ArithmeticView: View {

    var body: some View {

        VStack(spacing: 25) {

            Text("Arithmetic")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Choose a difficulty level")
                .font(.headline)
                .foregroundStyle(.secondary)

            Spacer()

            NavigationLink(destination: GameView(difficulty: .easy)) {
                Text("Easy")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)

            NavigationLink(destination: GameView(difficulty: .medium)) {
                Text("Medium")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)

            NavigationLink(destination: GameView(difficulty: .advanced)) {
                Text("Advanced")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)

            Spacer()
        }
        .padding()
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        ArithmeticView()
    }
}
