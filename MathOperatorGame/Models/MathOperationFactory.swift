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
        
        let firstNumber = Int.random(in: 1...maxNumber)
        let secondNumber = Int.random(in: 1...maxNumber)
        
        let operationType = availableOperations.randomElement()!
        
        return MathOperation(
            firstNumber: firstNumber,
            secondNumber: secondNumber,
            operationType: operationType
        )
    }
}
