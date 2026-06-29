struct MathOperationFactory {

    static func generate() -> MathOperation {

        let firstNumber = Int.random(in: 1...10)
        let secondNumber = Int.random(in: 1...10)
        
        let operationType = OperationType.allCases.randomElement()!
        
        return MathOperation(
            firstNumber: firstNumber,
            secondNumber: secondNumber,
            operationType: operationType
        )
    }
}
