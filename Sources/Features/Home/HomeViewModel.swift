import Foundation

@MainActor
final class HomeViewModel: ObservableObject {
    @Published var summary: String

    init(summary: String = "Welcome to Sparrows Volleyball") {
        self.summary = summary
    }
}
