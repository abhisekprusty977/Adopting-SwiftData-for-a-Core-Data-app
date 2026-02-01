import SwiftUI
import SwiftData

@main
struct TripsApp: App {
    let modelContainer = DataModel.shared.modelContainer
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(modelContainer)
    }
}
