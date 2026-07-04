import SwiftUI

struct GameView: View {

    let operation = MathOperationFactory.generate()

    @State private var answer = ""

    var body: some View {

        VStack(spacing: 30) {

            Text("Question 1")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text(
                "\(operation.firstNumber) \(symbol) \(operation.secondNumber) = ?"
            )
            .font(.system(size: 42, weight: .bold))

            TextField("Your answer", text: $answer)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)

            Button("Check Answer") {

            }
            .buttonStyle(.borderedProminent)

            Spacer()
        }
        .padding()
    }

    private var symbol: String {

        switch operation.operationType {

        case .addition:
            return "+"

        case .subtraction:
            return "-"

        case .multiplication:
            return "×"

        case .division:
            return "÷"
        }
    }
}

#Preview {
    GameView()
}
