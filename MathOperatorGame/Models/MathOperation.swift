struct MathOperation {
    let firstNumber: Int
    let secondNumber: Int
    let operationType: OperationType
    
    func calculateAnswer() -> Int {
        
        switch operationType {
            
        case .addition:
            return firstNumber + secondNumber
            
        case .subtraction:
            return firstNumber - secondNumber
            
        case .multiplication:
            return firstNumber * secondNumber
            
        case .division:
            return firstNumber / secondNumber
        }
    }
}
