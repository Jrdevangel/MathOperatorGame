struct MathOperationFactory {

    static func generate(score: Int = 0) -> MathOperation {

        let maxNumber: Int
        let availableOperations: [OperationType]

        switch score {

        case 0..<5:
            maxNumber = 10
            availableOperations = [.addition, .subtraction]

        case 5..<10:
            maxNumber = 20
            availableOperations = [
                .addition,
                .subtraction,
                .multiplication
            ]

        case 10..<20:
            maxNumber = 50
            availableOperations = OperationType.allCases

        default:
            maxNumber = 100
            availableOperations = OperationType.allCases
        }

        let operationType = availableOperations.randomElement()!

        switch operationType {

        case .division:

            let divisor = Int.random(in: 1...10)
            let quotient = Int.random(in: 1...maxNumber)

            return MathOperation(
                firstNumber: divisor * quotient,
                secondNumber: divisor,
                operationType: .division
            )

        default:

            return MathOperation(
                firstNumber: Int.random(in: 1...maxNumber),
                secondNumber: Int.random(in: 1...maxNumber),
                operationType: operationType
            )
        }
    }
}
