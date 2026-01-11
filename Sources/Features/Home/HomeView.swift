import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Sparrows Volleyball")
                .font(.largeTitle.bold())

            Text(viewModel.summary)
                .font(.title3)
                .foregroundStyle(.secondary)

            VStack(alignment: .leading, spacing: 12) {
                Label("View upcoming matches", systemImage: "calendar")
                Label("Share score updates", systemImage: "sportscourt")
                Label("Track team standings", systemImage: "chart.line.uptrend.xyaxis")
            }
            .font(.body)
            .padding(.top, 8)

            Spacer()
        }
        .padding(24)
        .navigationTitle("Home")
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
