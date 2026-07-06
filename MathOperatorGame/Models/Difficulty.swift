enum Difficulty: String, CaseIterable {

    case easy
    case medium
    case advanced

    var title: String {

        switch self {

        case .easy:
            return "Easy"

        case .medium:
            return "Medium"

        case .advanced:
            return "Advanced"
        }
    }

    var initialScore: Int {

        switch self {

        case .easy:
            return 0

        case .medium:
            return 5

        case .advanced:
            return 10
        }
    }
}
