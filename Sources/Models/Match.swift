import Foundation

struct Match: Identifiable, Hashable {
    let id: UUID
    let date: Date
    let homeTeam: Team
    let awayTeam: Team

    init(id: UUID = UUID(), date: Date, homeTeam: Team, awayTeam: Team) {
        self.id = id
        self.date = date
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
    }
}
