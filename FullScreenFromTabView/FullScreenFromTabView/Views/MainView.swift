//  Created by Mark Moeykens on 7/29/21.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var navigationOO: NavigationOO
    
    var body: some View {
        VStack {
            if navigationOO.navigateToFullScreenView {
                FullScreenView()
                    .transition(.move(edge: .trailing))
            } else {
                TabViewScreen()
            }
        }
        .animation(.default)
    }
}

struct MainView_Previews: PreviewProvider {
    @StateObject static var oo = NavigationOO()

    static var previews: some View {
        MainView()
            .environmentObject(oo)
    }
}
