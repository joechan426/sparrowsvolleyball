import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationStack {
            HomeView(viewModel: HomeViewModel())
        }
    }
}

#Preview {
    RootView()
}
