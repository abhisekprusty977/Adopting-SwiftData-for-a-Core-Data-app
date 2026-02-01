import SwiftUI
import SwiftData

actor DataModel {
    struct TransactionAuthor {
        static let widget = "widget"
    }

    static let shared = DataModel()
    
    private static let container: ModelContainer = {
        let modelContainer: ModelContainer
        do {
            modelContainer = try ModelContainer(for: Trip.self, PersonalTrip.self, BusinessTrip.self)
        } catch {
            fatalError("Failed to create the model container: \(error)")
        }
        return modelContainer
    }()
    
    nonisolated var modelContainer: ModelContainer {
        Self.container
    }
}
